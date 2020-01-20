EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Nordic:nRF52810-QCxx U1
U 1 1 5E18732B
P 4750 3400
F 0 "U1" H 4750 2311 50  0000 C CNN
F 1 "nRF52810-QCxx" H 4750 2220 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.6x3.6mm" H 4750 2050 50  0001 C CNN
F 3 "http://infocenter.nordicsemi.com/pdf/nRF52810_PS_v1.1.pdf" H 4250 3600 50  0001 C CNN
	1    4750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3250 3200 3200
Wire Wire Line
	3200 3200 3850 3200
Wire Wire Line
	3200 3600 3200 3550
$Comp
L Device:C C1
U 1 1 5E1B2D29
P 2600 3200
F 0 "C1" V 2348 3200 50  0000 C CNN
F 1 "CC0402GRNPO9BN120 SMD/SMT 50V 0.8pF C0G 0402 0.05pF " V 2439 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2638 3050 50  0001 C CNN
F 3 "~" H 2600 3200 50  0001 C CNN
	1    2600 3200
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E1B3310
P 2600 3600
F 0 "C2" V 2348 3600 50  0000 C CNN
F 1 "CC0402GRNPO9BN120 SMD/SMT 50V 0.8pF C0G 0402 0.05pF " V 2439 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2638 3450 50  0001 C CNN
F 3 "~" H 2600 3600 50  0001 C CNN
	1    2600 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 3200 3200 3200
Connection ~ 3200 3200
Wire Wire Line
	2750 3600 3200 3600
Connection ~ 3200 3600
Wire Wire Line
	3200 3600 3850 3600
$Comp
L Device:L L1
U 1 1 5E1B4619
P 3100 2700
F 0 "L1" V 2919 2700 50  0000 C CNN
F 1 "MLG1005S3N9CT000 0402 3.9nH StdQ " V 3010 2700 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 3100 2700 50  0001 C CNN
F 3 "~" H 3100 2700 50  0001 C CNN
	1    3100 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E1B4B76
P 3550 2450
F 0 "C3" H 3665 2496 50  0000 L CNN
F 1 "0.8pF" H 3665 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3588 2300 50  0001 C CNN
F 3 "~" H 3550 2450 50  0001 C CNN
	1    3550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2700 3550 2700
Wire Wire Line
	3550 2600 3550 2700
Connection ~ 3550 2700
Wire Wire Line
	3550 2700 3850 2700
Wire Wire Line
	2400 2650 2400 2700
Wire Wire Line
	2400 2700 2950 2700
$Comp
L Device:C C5
U 1 1 5E1B626F
P 4200 1950
F 0 "C5" H 4315 1996 50  0000 L CNN
F 1 "NC" H 4315 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4238 1800 50  0001 C CNN
F 3 "~" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E1B6489
P 4500 1950
F 0 "C6" H 4615 1996 50  0000 L CNN
F 1 "100pF" H 4615 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4538 1800 50  0001 C CNN
F 3 "~" H 4500 1950 50  0001 C CNN
	1    4500 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E1B6769
P 3900 1950
F 0 "C4" H 4015 1996 50  0000 L CNN
F 1 "0.1uF" H 4015 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 1800 50  0001 C CNN
F 3 "~" H 3900 1950 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E1B6DF7
P 4850 1950
F 0 "C7" H 4965 1996 50  0000 L CNN
F 1 "1uF" H 4965 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4888 1800 50  0001 C CNN
F 3 "~" H 4850 1950 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4950 2400
$Comp
L Device:C C8
U 1 1 5E1B7280
P 6550 2000
F 0 "C8" H 6665 2046 50  0000 L CNN
F 1 "0.1uF" H 6665 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6588 1850 50  0001 C CNN
F 3 "~" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5E1B7592
P 7000 2000
F 0 "C9" H 7115 2046 50  0000 L CNN
F 1 "0.1uF" H 7115 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7038 1850 50  0001 C CNN
F 3 "~" H 7000 2000 50  0001 C CNN
	1    7000 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5E1B7BE4
P 7350 2000
F 0 "C10" H 7465 2046 50  0000 L CNN
F 1 "4.7uF" H 7465 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7388 1850 50  0001 C CNN
F 3 "~" H 7350 2000 50  0001 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2400 4750 2250
Wire Wire Line
	4750 2250 5300 2250
Wire Wire Line
	6150 2150 6550 2150
Wire Wire Line
	6150 2150 6150 2250
Wire Wire Line
	7000 2150 7350 2150
Wire Wire Line
	7000 2150 6550 2150
Connection ~ 7000 2150
Connection ~ 6550 2150
Wire Wire Line
	3550 2300 3550 1800
Wire Wire Line
	3550 1800 3900 1800
Wire Wire Line
	4850 1800 5600 1800
Wire Wire Line
	6550 1800 6550 1850
Wire Wire Line
	3900 1800 4200 1800
Connection ~ 3900 1800
Connection ~ 4850 1800
Connection ~ 4200 1800
Wire Wire Line
	4200 1800 4500 1800
Connection ~ 4500 1800
Wire Wire Line
	4500 1800 4850 1800
Wire Wire Line
	6550 1850 7000 1850
Connection ~ 6550 1850
Connection ~ 7000 1850
Wire Wire Line
	7000 1850 7350 1850
Wire Wire Line
	2450 3200 2450 3600
$Comp
L power:GND #PWR04
U 1 1 5E1BC0E9
P 7750 3450
F 0 "#PWR04" H 7750 3200 50  0001 C CNN
F 1 "GND" H 7755 3277 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 5E1BC5B3
P 8200 3350
F 0 "#PWR05" H 8200 3200 50  0001 C CNN
F 1 "+3V3" H 8215 3523 50  0000 C CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E1BCC0E
P 7750 3450
F 0 "#FLG01" H 7750 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 7750 3623 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E1BDA36
P 8200 3350
F 0 "#FLG02" H 8200 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 8200 3523 50  0000 C CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E1BE193
P 4750 4650
F 0 "#PWR02" H 4750 4400 50  0001 C CNN
F 1 "GND" H 4755 4477 50  0000 C CNN
F 2 "" H 4750 4650 50  0001 C CNN
F 3 "" H 4750 4650 50  0001 C CNN
	1    4750 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E1BEC7C
P 2450 3800
F 0 "#PWR01" H 2450 3550 50  0001 C CNN
F 1 "GND" H 2455 3627 50  0000 C CNN
F 2 "" H 2450 3800 50  0001 C CNN
F 3 "" H 2450 3800 50  0001 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E1BF79D
P 5600 2000
F 0 "#PWR03" H 5600 1750 50  0001 C CNN
F 1 "GND" H 5605 1827 50  0000 C CNN
F 2 "" H 5600 2000 50  0001 C CNN
F 3 "" H 5600 2000 50  0001 C CNN
	1    5600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1800 5600 2000
Connection ~ 5600 1800
Wire Wire Line
	5600 1800 6550 1800
Wire Wire Line
	2450 3800 2450 3600
Connection ~ 2450 3600
Wire Wire Line
	4750 4650 4750 4400
Wire Wire Line
	3900 2100 3900 2300
Wire Wire Line
	3900 2300 4250 2300
Wire Wire Line
	4250 2300 4250 2400
Wire Wire Line
	4200 2100 4200 2200
Wire Wire Line
	4200 2200 4350 2200
Wire Wire Line
	4350 2200 4350 2400
Wire Wire Line
	4500 2100 4500 2200
Wire Wire Line
	4500 2200 4450 2200
Wire Wire Line
	4450 2200 4450 2400
Wire Wire Line
	4550 2400 4550 2300
Wire Wire Line
	4550 2300 4600 2300
Wire Wire Line
	4600 2300 4600 2100
Wire Wire Line
	4600 2100 4850 2100
$Comp
L kilib:ANTENNA-GROUNDEDTRACE-15.2MM E1
U 1 1 5E137CBD
P 2400 2250
F 0 "E1" H 2272 2103 70  0000 R CNN
F 1 "ANTENNA-GROUNDEDTRACE-15.2MM" H 2272 1982 70  0000 R CNN
F 2 "kifootp:TRACE_ANTENNA_2.4GHZ_15.2MM" H 2400 2250 50  0001 C CNN
F 3 "" H 2400 2250 50  0001 C CNN
	1    2400 2250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E1392F2
P 2300 2650
F 0 "#PWR06" H 2300 2400 50  0001 C CNN
F 1 "GND" H 2305 2477 50  0000 C CNN
F 2 "" H 2300 2650 50  0001 C CNN
F 3 "" H 2300 2650 50  0001 C CNN
	1    2300 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5E14EF5F
P 3250 4700
F 0 "J1" H 3142 4275 50  0000 C CNN
F 1 "Conn_01x04_Female" H 3142 4366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3250 4700 50  0001 C CNN
F 3 "~" H 3250 4700 50  0001 C CNN
	1    3250 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E14FB07
P 3750 5100
F 0 "#PWR0101" H 3750 4850 50  0001 C CNN
F 1 "GND" H 3755 4927 50  0000 C CNN
F 2 "" H 3750 5100 50  0001 C CNN
F 3 "" H 3750 5100 50  0001 C CNN
	1    3750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4800 3750 4800
Wire Wire Line
	3750 4800 3750 5100
Wire Wire Line
	3450 4700 3800 4700
Wire Wire Line
	3800 4700 3800 4200
Wire Wire Line
	3800 4200 3850 4200
Wire Wire Line
	3450 4600 3750 4600
Wire Wire Line
	3750 4600 3750 4100
Wire Wire Line
	3750 4100 3850 4100
Wire Wire Line
	3850 4000 3550 4000
Wire Wire Line
	3550 4000 3550 4500
Wire Wire Line
	3550 4500 3450 4500
$Comp
L Connector:Conn_01x16_Male J2
U 1 1 5E157987
P 5850 3500
F 0 "J2" H 5822 3382 50  0000 R CNN
F 1 "Conn_01x16_Male" H 5822 3473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 5850 3500 50  0001 C CNN
F 3 "~" H 5850 3500 50  0001 C CNN
	1    5850 3500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5E1597BC
P 6750 2800
F 0 "J3" H 6858 3081 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6858 2990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6750 2800 50  0001 C CNN
F 3 "~" H 6750 2800 50  0001 C CNN
	1    6750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E159ED1
P 7250 3150
F 0 "#PWR0102" H 7250 2900 50  0001 C CNN
F 1 "GND" H 7255 2977 50  0000 C CNN
F 2 "" H 7250 3150 50  0001 C CNN
F 3 "" H 7250 3150 50  0001 C CNN
	1    7250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2800 7250 2800
Wire Wire Line
	7250 2800 7250 2900
Wire Wire Line
	6950 2900 7250 2900
Connection ~ 7250 2900
Wire Wire Line
	7250 2900 7250 3000
Wire Wire Line
	6950 3000 7250 3000
Connection ~ 7250 3000
Wire Wire Line
	7250 3000 7250 3150
$Comp
L power:+3V3 #PWR0103
U 1 1 5E15DB9D
P 7450 2650
F 0 "#PWR0103" H 7450 2500 50  0001 C CNN
F 1 "+3V3" H 7465 2823 50  0000 C CNN
F 2 "" H 7450 2650 50  0001 C CNN
F 3 "" H 7450 2650 50  0001 C CNN
	1    7450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2700 7450 2700
Wire Wire Line
	7450 2700 7450 2650
$Comp
L power:+3V3 #PWR0104
U 1 1 5E160191
P 5300 2250
F 0 "#PWR0104" H 5300 2100 50  0001 C CNN
F 1 "+3V3" H 5315 2423 50  0000 C CNN
F 2 "" H 5300 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	1    0    0    -1  
$EndComp
Connection ~ 5300 2250
Wire Wire Line
	5300 2250 6150 2250
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5E17783C
P 3200 3400
F 0 "Y1" V 3154 3644 50  0000 L CNN
F 1 "Crystal_GND24" V 3245 3644 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 3200 3400 50  0001 C CNN
F 3 "~" H 3200 3400 50  0001 C CNN
	1    3200 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E178FFA
P 3400 3400
F 0 "#PWR0105" H 3400 3150 50  0001 C CNN
F 1 "GND" H 3405 3227 50  0000 C CNN
F 2 "" H 3400 3400 50  0001 C CNN
F 3 "" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E1796BE
P 3000 3400
F 0 "#PWR0106" H 3000 3150 50  0001 C CNN
F 1 "GND" H 3005 3227 50  0000 C CNN
F 2 "" H 3000 3400 50  0001 C CNN
F 3 "" H 3000 3400 50  0001 C CNN
	1    3000 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
