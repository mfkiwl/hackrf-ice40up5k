/*
 * @brief SSP example
 * This example show how to use the SSP in 3 modes : Polling, Interrupt and DMA
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2013
 * All rights reserved.
 *
 * @par
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * LPC products.  This software is supplied "AS IS" without any warranties of
 * any kind, and NXP Semiconductors and its licensor disclaim any and
 * all warranties, express or implied, including all implied warranties of
 * merchantability, fitness for a particular purpose and non-infringement of
 * intellectual property rights.  NXP Semiconductors assumes no responsibility
 * or liability for the use of the software, conveys no license or rights under any
 * patent, copyright, mask work right, or any other intellectual property rights in
 * or to any products. NXP Semiconductors reserves the right to make changes
 * in the software without notification. NXP Semiconductors also makes no
 * representation or warranty that such application will be suitable for the
 * specified use without further testing or modification.
 *
 * @par
 * Permission to use, copy, modify, and distribute this software and its
 * documentation is hereby granted, under NXP Semiconductors' and its
 * licensor's relevant copyrights in the software, without fee, provided that it
 * is used in conjunction with NXP Semiconductors microcontrollers.  This
 * copyright, permission, and disclaimer notice must appear in all copies of
 * this code.
 */

#include <unistd.h>
#include "board.h"
#include "stdio.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#if (defined(BOARD_KEIL_MCB_1857) || defined(BOARD_KEIL_MCB_4357) || \
	defined(BOARD_NGX_XPLORER_1830) || defined(BOARD_NGX_XPLORER_4330) || \
	defined(BOARD_NXP_LPCLINK2_4370) || defined(BOARD_NXP_LPCXPRESSO_4337))
#define LPC_SSP           LPC_SSP1
#define SSP_IRQ           SSP1_IRQn
#define LPC_GPDMA_SSP_TX  GPDMA_CONN_SSP1_Tx
#define LPC_GPDMA_SSP_RX  GPDMA_CONN_SSP1_Rx
#define SSPIRQHANDLER SSP1_IRQHandler
#elif (defined(BOARD_HITEX_EVA_1850) || defined(BOARD_HITEX_EVA_4350))
#define LPC_SSP           LPC_SSP0
#define SSP_IRQ           SSP0_IRQn
#define LPC_GPDMA_SSP_TX  GPDMA_CONN_SSP0_Tx
#define LPC_GPDMA_SSP_RX  GPDMA_CONN_SSP0_Rx
#define SSPIRQHANDLER SSP0_IRQHandler
#else
#warning Unsupported Board
#endif
#define BUFFER_SIZE                         (0x100)
#define SSP_DATA_BITS                       (SSP_BITS_8)
#define SSP_DATA_BIT_NUM(databits)          (databits+1)
#define SSP_DATA_BYTES(databits)            (((databits) > SSP_BITS_8) ? 2:1)
#define SSP_LO_BYTE_MSK(databits)           ((SSP_DATA_BYTES(databits) > 1) ? 0xFF:(0xFF>>(8-SSP_DATA_BIT_NUM(databits))))
#define SSP_HI_BYTE_MSK(databits)           ((SSP_DATA_BYTES(databits) > 1) ? (0xFF>>(16-SSP_DATA_BIT_NUM(databits))):0)

#define SSP_MODE_SEL                        (0x31)
#define SSP_TRANSFER_MODE_SEL               (0x32)
#define SSP_MASTER_MODE_SEL                 (0x31)
#define SSP_SLAVE_MODE_SEL                  (0x32)
#define SSP_POLLING_SEL                     (0x31)
#define SSP_INTERRUPT_SEL                   (0x32)
#define SSP_DMA_SEL                         (0x33)

/* Tx buffer */
static uint8_t Tx_Buf[BUFFER_SIZE];

/* Rx buffer */
static uint8_t Rx_Buf[BUFFER_SIZE];

static SSP_ConfigFormat ssp_format;
static Chip_SSP_DATA_SETUP_T xf_setup;
static volatile uint8_t  isXferCompleted = 0;
static uint8_t dmaChSSPTx, dmaChSSPRx;
static volatile uint8_t isDmaTxfCompleted = 0;
static volatile uint8_t isDmaRxfCompleted = 0;

#if defined(DEBUG_ENABLE)
static char sspWaitingMenu[] = "SSP Polling: waiting for transfer ...\n\r";
static char sspIntWaitingMenu[]  = "SSP Interrupt: waiting for transfer ...\n\r";
static char sspDMAWaitingMenu[]  = "SSP DMA: waiting for transfer ...\n\r";

static char sspPassedMenu[] = "SSP: Transfer PASSED\n\r";
static char sspFailedMenu[] = "SSP: Transfer FAILED\n\r";

static char sspTransferModeSel[] = "\n\rPress 1-3 or 'q' to exit\n\r"
								   "\t 1: SSP Polling Read Write\n\r"
								   "\t 2: SSP Int Read Write\n\r"
								   "\t 3: SSP DMA Read Write\n\r";

static char helloMenu[] = "Hello NXP Semiconductors \n\r";
static char sspMenu[] = "SSP demo \n\r";
static char sspMainMenu[] = "\t 1: Select SSP Mode (Master/Slave)\n\r"
							"\t 2: Select Transfer Mode\n\r";
static char sspSelectModeMenu[] = "\n\rPress 1-2 to select or 'q' to exit:\n\r"
								  "\t 1: Master \n\r"
								  "\t 2: Slave\n\r";

#include "ssp_general.h"

void ice40reset();

void ice40_release();

void spi_deinit();

void spi_init();

int getMenu();

void spi_select();

void spi_unselect();

void spi_send();

uint8_t *spi_flash_read(uint32_t addr, uint32_t len);

#endif /* defined(DEBUG_ENABLE) */

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Initialize buffer */
static void Buffer_Init(void)
{
	uint16_t i;
	uint8_t ch = 0;

	for (i = 0; i < BUFFER_SIZE; i++) {
		Tx_Buf[i] = ch++;
		Rx_Buf[i] = 0xAA;
	}
}

/* Verify buffer after transfer */
static uint8_t Buffer_Verify(void)
{
	uint16_t i;
	uint8_t *src_addr = (uint8_t *) &Tx_Buf[0];
	uint8_t *dest_addr = (uint8_t *) &Rx_Buf[0];

	for ( i = 0; i < BUFFER_SIZE; i++ ) {

		if (((*src_addr) & SSP_LO_BYTE_MSK(ssp_format.bits)) !=
				((*dest_addr) & SSP_LO_BYTE_MSK(ssp_format.bits))) {
				return 1;
		}
		src_addr++;
		dest_addr++;

		if (SSP_DATA_BYTES(ssp_format.bits) == 2) {
			if (((*src_addr) & SSP_HI_BYTE_MSK(ssp_format.bits)) !=
				  ((*dest_addr) & SSP_HI_BYTE_MSK(ssp_format.bits))) {
					return 1;
			}
			src_addr++;
			dest_addr++;
			i++;
		}
	}
	return 0;
}

/* Select the Transfer mode : Polling, Interrupt or DMA */
static void appSSPTest(void)
{
	int key;

	DEBUGOUT(sspTransferModeSel);

	dmaChSSPTx = Chip_GPDMA_GetFreeChannel(LPC_GPDMA, LPC_GPDMA_SSP_TX);
	dmaChSSPRx = Chip_GPDMA_GetFreeChannel(LPC_GPDMA, LPC_GPDMA_SSP_RX);

	xf_setup.length = BUFFER_SIZE;
	xf_setup.tx_data = Tx_Buf;
	xf_setup.rx_data = Rx_Buf;

	while (1) {
		key = 0xFF;
		do {
			key = DEBUGIN();
		} while ((key & 0xFF) == 0xFF);

		Buffer_Init();

		switch (key) {
		case SSP_POLLING_SEL:	/* SSP Polling Read Write Mode */
			DEBUGOUT(sspWaitingMenu);
			xf_setup.rx_cnt = xf_setup.tx_cnt = 0;

			Chip_SSP_RWFrames_Blocking(LPC_SSP, &xf_setup);

			if (Buffer_Verify() == 0) {
				DEBUGOUT(sspPassedMenu);
			}
			else {
				DEBUGOUT(sspFailedMenu);
			}
			break;

		case SSP_INTERRUPT_SEL:
			DEBUGOUT(sspIntWaitingMenu);

			isXferCompleted = 0;
			xf_setup.rx_cnt = xf_setup.tx_cnt = 0;

			Chip_SSP_Int_FlushData(LPC_SSP);/* flush dummy data from SSP FiFO */
			if (SSP_DATA_BYTES(ssp_format.bits) == 1) {
				Chip_SSP_Int_RWFrames8Bits(LPC_SSP, &xf_setup);
			}
			else {
				Chip_SSP_Int_RWFrames16Bits(LPC_SSP, &xf_setup);
			}

			Chip_SSP_Int_Enable(LPC_SSP);	/* enable interrupt */
			while (!isXferCompleted) {}

			if (Buffer_Verify() == 0) {
				DEBUGOUT(sspPassedMenu);
			}
			else {
				DEBUGOUT(sspFailedMenu);
			}
			break;

		case SSP_DMA_SEL:	/* SSP DMA Read and Write: fixed on 8bits */
			DEBUGOUT(sspDMAWaitingMenu);
			isDmaTxfCompleted = isDmaRxfCompleted = 0;

			Chip_SSP_DMA_Enable(LPC_SSP);
			/* data Tx_Buf --> SSP */
			Chip_GPDMA_Transfer(LPC_GPDMA, dmaChSSPTx,
							  (uint32_t) &Tx_Buf[0],
							  LPC_GPDMA_SSP_TX,
							  GPDMA_TRANSFERTYPE_M2P_CONTROLLER_DMA,
							  BUFFER_SIZE);
			/* data SSP --> Rx_Buf */
			Chip_GPDMA_Transfer(LPC_GPDMA, dmaChSSPRx,
							  LPC_GPDMA_SSP_RX,
							  (uint32_t) &Rx_Buf[0],
							  GPDMA_TRANSFERTYPE_P2M_CONTROLLER_DMA,
							  BUFFER_SIZE);

			while (!isDmaTxfCompleted || !isDmaRxfCompleted) {}
			if (Buffer_Verify() == 0) {
				DEBUGOUT(sspPassedMenu);
			}
			else {
				DEBUGOUT(sspFailedMenu);
			}
			Chip_SSP_DMA_Disable(LPC_SSP);
			break;

		case 'q':
		case 'Q':
			Chip_GPDMA_Stop(LPC_GPDMA, dmaChSSPTx);
			Chip_GPDMA_Stop(LPC_GPDMA, dmaChSSPRx);
			return;

		default:
			break;
		}

		DEBUGOUT(sspTransferModeSel);
	}

}

/* Select the SSP mode : Master or Slave */
static void appSSPSelectModeMenu(void)
{
	int key;

	DEBUGOUT(sspSelectModeMenu);

	while (1) {
		key = 0xFF;
		do {
			key = DEBUGIN();
		} while ((key & 0xFF) == 0xFF);

		switch (key) {
		case SSP_MASTER_MODE_SEL:	/* Master */
			Chip_SSP_SetMaster(LPC_SSP, 1);
			DEBUGOUT("Master Mode\n\r");
			return;

		case SSP_SLAVE_MODE_SEL:	/* Slave */
			Chip_SSP_SetMaster(LPC_SSP, 0);
			DEBUGOUT("Slave Mode\n\r");
			return;

		case 'q':
			return;

		default:
			break;
		}
		DEBUGOUT(sspSelectModeMenu);
	}

}

/* The main menu of the example. Allow user select the SSP mode (master or slave) and Transfer
   mode (Polling, Interrupt or DMA) */
static void appSSPMainMenu(void)
{
	int key;

	DEBUGOUT(helloMenu);
	DEBUGOUT(sspMenu);
	DEBUGOUT(sspMainMenu);

	while (1) {
		key = 0xFF;
		do {
			key = DEBUGIN();
		} while ((key & 0xFF) == 0xFF);

		switch (key) {
		case SSP_MODE_SEL:	/* Select SSP Mode */
			appSSPSelectModeMenu();
			break;

		case SSP_TRANSFER_MODE_SEL:	/* Select Transfer Mode */
			appSSPTest();
			break;

		default:
			break;
		}
		DEBUGOUT(sspMainMenu);
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	SSP interrupt handler sub-routine
 * @return	Nothing
 */
void SSPIRQHANDLER(void)
{
	Chip_SSP_Int_Disable(LPC_SSP);	/* Disable all interrupt */
	if (SSP_DATA_BYTES(ssp_format.bits) == 1) {
		Chip_SSP_Int_RWFrames8Bits(LPC_SSP, &xf_setup);
	}
	else {
		Chip_SSP_Int_RWFrames16Bits(LPC_SSP, &xf_setup);
	}

	if ((xf_setup.rx_cnt != xf_setup.length) || (xf_setup.tx_cnt != xf_setup.length)) {
		Chip_SSP_Int_Enable(LPC_SSP);	/* enable all interrupts */
	}
	else {
		isXferCompleted = 1;
	}
}

/**
 * @brief	DMA interrupt handler sub-routine. Set the waiting flag when transfer is successful
 * @return	Nothing
 */
void DMA_IRQHandlerA(void)
{
	if (Chip_GPDMA_Interrupt(LPC_GPDMA, dmaChSSPTx) == SUCCESS) {
		isDmaTxfCompleted = 1;
	}

	if (Chip_GPDMA_Interrupt(LPC_GPDMA, dmaChSSPRx) == SUCCESS) {
		isDmaRxfCompleted = 1;
	}
}

/* Print data to console */
static void con_print_data(const uint8_t *dat, int sz)
{
    int i;
    if (!sz) {
        return;
    }
    for (i = 0; i < sz; i++) {
        if (!(i & 0xF)) {
            DEBUGOUT("\r\n%02X: ", i);
        }
        DEBUGOUT(" %02X", dat[i]);
    }
    DEBUGOUT("\r\n");
}

void spi_read_id();

/**
 * @brief	Main routine for SSP example
 * @return	Nothing
 */
int main_ssp(void)
{
    ice40reset();

    spi_init();


    while (1) {
        DEBUGOUT("SPI enter\r\n");

        spi_wake_up();

        spi_read_id();

        spi_flash_read(0, 20);

        int key = getMenu();
        switch (key) {
            case 'q':
                goto there;
            default:
                continue;
        }
    }

    there: ;

    spi_deinit();

    ice40_release();

    return 0;
}

void spi_read_id() {
    Tx_Buf[0] = 0x9F;
    spi_send(1, 20, 0);
}

void spi_wake_up() {
    Tx_Buf[0] = 0xAB;
    spi_send(1, 20, 0);
}

uint8_t *spi_flash_write(uint32_t addr, uint32_t len, uint8_t* data) {
    Tx_Buf[0] = 0x02;
    Tx_Buf[1] = (addr >> 16) & 0xff;
    Tx_Buf[2] = (addr >> 8) & 0xff;;
    Tx_Buf[3] = (addr >> 0) & 0xff;;
    for (int i = 4; i < 4 + len; i ++) {
        Tx_Buf[i] = data[i - 4];
    }
    spi_send(4 + len, 0, 1);
    return Rx_Buf + 4;
}

uint8_t *spi_flash_read(uint32_t addr, uint32_t len) {
    Tx_Buf[0] = 0x03;
    Tx_Buf[1] = (addr >> 16) & 0xff;
    Tx_Buf[2] = (addr >> 8) & 0xff;;
    Tx_Buf[3] = (addr >> 0) & 0xff;;
    spi_send(4, len, 0);
    return Rx_Buf + 4;
}

uint8_t *spi_flash_we() {
    Tx_Buf[0] = 0x06;
    spi_send(1, 0, 1);
    return Rx_Buf + 1;
}

uint8_t *spi_flash_erase(uint32_t addr) {
    Tx_Buf[0] = 0x20;
    Tx_Buf[1] = (addr >> 16) & 0xff;
    Tx_Buf[2] = (addr >> 8) & 0xff;;
    Tx_Buf[3] = (addr >> 0) & 0xff;;
    spi_send(4, 0, 1);
    return Rx_Buf + 4;
}

uint8_t *spi_flash_erase_all() {
    Tx_Buf[0] = 0xC7;
    spi_send(1, 0, 1);
    return Rx_Buf + 4;
}

void delay(uint32_t duration);

uint8_t *spi_flash_wait() {
    Tx_Buf[0] = 0x05;
    DEBUGOUT("SPI wait:\r\n");
    while (true) {
        spi_send(1, 1, 0);
        uint8_t result = *(Rx_Buf + 1);
        if ((result & 0x01) == 0) {
            DEBUGOUT("SPI wait done:\r\n");
            return Rx_Buf + 1;
        }
        DEBUGOUT(".\r\n");
    }
}

void spi_send(int cmdlen, int rcvlen, int nonStd) {
    spi_select();
    xf_setup.length = cmdlen + rcvlen + (nonStd == 0);
    xf_setup.tx_data = Tx_Buf;
    xf_setup.rx_data = Rx_Buf;
    xf_setup.rx_cnt = xf_setup.tx_cnt = 0;
    DEBUGOUT("SPI send:\r\n");
    for (int i = cmdlen; i < xf_setup.length; i++) {
        Tx_Buf[i] = 0x00;
    }
    con_print_data(Tx_Buf, cmdlen);
    Chip_SSP_RWFrames_Blocking(LPC_SSP, &xf_setup);
    DEBUGOUT("SPI receive:\r\n");
    con_print_data(Rx_Buf + cmdlen, rcvlen);
    spi_unselect();
    DEBUGOUT("SPI done:\r\n");
}

void spi_unselect() { Chip_GPIO_SetPinState(LPC_GPIO_PORT, 1, 0, (bool) true); }

void spi_select() { Chip_GPIO_SetPinState(LPC_GPIO_PORT, 1, 0, (bool) false); }

int getMenu() {
    int key;
    key = 0xFF;
    do {
        key = DEBUGIN();
    } while ((key & 0xFF) == 0xFF);
    return key;
}

void spi_init() {
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 1, 0);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 1, 0, (bool) true);

    /* SSP initialization */
    Board_SSP_Init(LPC_SSP);

    Chip_SSP_Init(LPC_SSP);

    ssp_format.frameFormat = SSP_FRAMEFORMAT_SPI;
    ssp_format.bits = SSP_DATA_BITS;
    ssp_format.clockMode = SSP_CLOCK_CPHA0_CPOL1;
    Chip_SSP_SetFormat(LPC_SSP, ssp_format.bits, ssp_format.frameFormat, ssp_format.clockMode);
    Chip_SSP_Enable(LPC_SSP);
    //Chip_SSP_SetBitRate(LPC_SSP, 8);

    /* Initialize GPDMA controller */
    Chip_GPDMA_Init(LPC_GPDMA);

    /* Setting GPDMA interrupt */
    NVIC_DisableIRQ(DMA_IRQn);
    NVIC_SetPriority(DMA_IRQn, ((0x01 << 3) | 0x01));
    NVIC_EnableIRQ(DMA_IRQn);

    /* Setting SSP interrupt */
    NVIC_EnableIRQ(SSP_IRQ);
}

void spi_deinit() {
    Chip_SCU_PinMuxSet(0x1, 5, (SCU_PINIO_FAST | SCU_MODE_FUNC0));  /* P1.5 => SSEL1 */
    //Chip_SCU_PinMuxSet(0xF, 4, (SCU_PINIO_FAST | SCU_MODE_FUNC0));  /* PF.4 => SCK1 */

    Chip_SCU_PinMuxSet(0x1, 4, (SCU_MODE_INACT | SCU_MODE_INBUFF_EN | SCU_MODE_ZIF_DIS | SCU_MODE_FUNC0)); /* P1.4 => MOSI1 */
    Chip_SCU_PinMuxSet(0x1, 3, (SCU_MODE_INACT | SCU_MODE_INBUFF_EN | SCU_MODE_ZIF_DIS | SCU_MODE_FUNC0)); /* P1.3 => MISO1 */

    Chip_SCU_PinMuxSet(0x3, 1, (SCU_MODE_INACT | SCU_MODE_FUNC0));  /* P1.5 => SSEL1 */
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 5, 8);
    //Chip_GPIO_SetPinState(LPC_GPIO_PORT, 5, 8, (bool) true);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 1, 0);
}

void ice40_release() { Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 1, 7); }

void ice40reset() {
    Chip_SCU_PinMuxSet(0x1, 14, (SCU_PINIO_FAST | SCU_MODE_FUNC0));  // ice40 CRESET
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 1, 7);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 1, 7, (bool) false);
}

void spi_main() {
    DEBUGOUT("SPI enter\r\n");


    Chip_SCU_PinMuxSet(0x3, 3, (SCU_MODE_INACT | SCU_MODE_ZIF_DIS | SCU_MODE_INBUFF_EN | SCU_MODE_FUNC1));		/* P2.3 : I2C1_SDA */
    Chip_SCU_PinMuxSet(0x3, 6, (SCU_MODE_INACT | SCU_MODE_ZIF_DIS | SCU_MODE_INBUFF_EN | SCU_MODE_FUNC1));		/* P2.3 : I2C1_SDA */
    Chip_SCU_PinMuxSet(0x3, 7, (SCU_MODE_INACT | SCU_MODE_ZIF_DIS | SCU_MODE_INBUFF_EN | SCU_MODE_FUNC1));		/* P2.3 : I2C1_SDA */
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 3, 8);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 3, 8, (bool) true);
    Chip_Clock_Enable(CLK_SPI);
    Chip_Clock_Enable(CLK_PERIPH_CORE);
    Chip_Clock_Enable(CLK_PERIPH_BUS);

    Chip_SPI_Init(LPC_SPI);
    unsigned char* buf = "hello\r\n";
    SPI_DATA_SETUP_T spiSet;
    spiSet.fnAftFrame = spiSet.fnAftTransfer = spiSet.fnBefFrame = spiSet.fnBefTransfer = 0;
    spiSet.pRxData = spiSet.pTxData = buf;
    spiSet.cnt = 0;
    spiSet.length = 2;
    Chip_SPI_SetMode(LPC_SPI, SPI_MODE_SLAVE);
    DEBUGOUT("SPI wait\r\n");
    Chip_SPI_RWFrames_Blocking(LPC_SPI, &spiSet);
    DEBUGOUT("out: %s\r\n", buf);
    DEBUGOUT("SPI cmplt\r\n");
    DEBUGOUT(buf);
}
