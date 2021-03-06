EESchema Schematic File Version 4
LIBS:eepromboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Wire Notes Line
	3350 500  3350 3450
Wire Notes Line
	3350 3450 500  3450
Wire Notes Line
	1650 550  1650 1400
Wire Notes Line
	1650 1400 500  1400
Text Notes 600  650  0    50   ~ 0
I2C EEPROM
Wire Notes Line
	3400 3450 6600 3450
Wire Notes Line
	6600 3450 6600 500 
Text Notes 3500 600  0    50   ~ 0
SPI Flash
Wire Notes Line
	3400 1400 4600 1400
Wire Notes Line
	4600 1400 4600 500 
$Comp
L kilib2:24LC512 U1
U 1 1 5D4880BD
P 1700 2300
F 0 "U1" H 1700 1914 50  0000 C CNN
F 1 "24LC512" H 1700 1823 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-S-8-1EP_6x5mm_P1.27mm" H 1700 2300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21754M.pdf" H 1700 2300 50  0001 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:AT25SF081-XMHD-X U2
U 1 1 5D495B07
P 4850 2350
F 0 "U2" H 5491 2396 50  0000 L CNN
F 1 "AT25SF081-XMHD-X" H 5491 2305 50  0000 L CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 4850 1750 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 4850 2350 50  0001 C CNN
	1    4850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D495BEA
P 5150 4950
F 0 "#FLG01" H 5150 5025 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 5124 50  0000 C CNN
F 2 "" H 5150 4950 50  0001 C CNN
F 3 "~" H 5150 4950 50  0001 C CNN
	1    5150 4950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D495C48
P 5750 4950
F 0 "#FLG02" H 5750 5025 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 5124 50  0000 C CNN
F 2 "" H 5750 4950 50  0001 C CNN
F 3 "~" H 5750 4950 50  0001 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D495C88
P 6350 5000
F 0 "#FLG03" H 6350 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 5174 50  0000 C CNN
F 2 "" H 6350 5000 50  0001 C CNN
F 3 "~" H 6350 5000 50  0001 C CNN
	1    6350 5000
	1    0    0    -1  
$EndComp
Text Label 2500 2300 0    60   ~ 0
A5(SCL)
Wire Wire Line
	2100 2300 2500 2300
Wire Wire Line
	2100 2200 2500 2200
Text Label 2500 2200 0    60   ~ 0
A4(SDA)
$Comp
L power:GND #PWR0101
U 1 1 5D4989DE
P 5150 5250
F 0 "#PWR0101" H 5150 5000 50  0001 C CNN
F 1 "GND" H 5150 5100 50  0000 C CNN
F 2 "" H 5150 5250 50  0000 C CNN
F 3 "" H 5150 5250 50  0000 C CNN
	1    5150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5D4994A1
P 5750 4950
F 0 "#PWR0102" H 5750 4800 50  0001 C CNN
F 1 "+3.3V" V 5750 5200 50  0000 C CNN
F 2 "" H 5750 4950 50  0000 C CNN
F 3 "" H 5750 4950 50  0000 C CNN
	1    5750 4950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5D4994A7
P 6350 5650
F 0 "#PWR0103" H 6350 5500 50  0001 C CNN
F 1 "+5V" V 6350 5850 50  0000 C CNN
F 2 "" H 6350 5650 50  0000 C CNN
F 3 "" H 6350 5650 50  0000 C CNN
	1    6350 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 5000 6350 5650
Wire Wire Line
	5150 4950 5150 5250
Wire Wire Line
	1700 2600 1700 2950
Wire Wire Line
	900  2950 900  2400
Wire Wire Line
	900  2200 1300 2200
Wire Wire Line
	1300 2300 900  2300
Connection ~ 900  2300
Wire Wire Line
	900  2300 900  2200
Wire Wire Line
	1300 2400 900  2400
Connection ~ 900  2400
Wire Wire Line
	900  2400 900  2300
$Comp
L power:GND #PWR0104
U 1 1 5D49FE6D
P 4850 3150
F 0 "#PWR0104" H 4850 2900 50  0001 C CNN
F 1 "GND" H 4850 3000 50  0000 C CNN
F 2 "" H 4850 3150 50  0000 C CNN
F 3 "" H 4850 3150 50  0000 C CNN
	1    4850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2850 4850 3150
$Comp
L power:+3.3V #PWR0105
U 1 1 5D4A2D6B
P 1700 1750
F 0 "#PWR0105" H 1700 1600 50  0001 C CNN
F 1 "+3.3V" V 1700 2000 50  0000 C CNN
F 2 "" H 1700 1750 50  0000 C CNN
F 3 "" H 1700 1750 50  0000 C CNN
	1    1700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2000 1700 1750
Wire Wire Line
	1850 2000 1850 1700
Wire Wire Line
	1850 1700 3050 1700
Wire Wire Line
	3050 1700 3050 2950
Wire Wire Line
	3050 2950 2350 2950
Connection ~ 1700 2950
NoConn ~ 10550 1400
NoConn ~ 10550 2100
NoConn ~ 10550 2000
NoConn ~ 10550 2300
NoConn ~ 10550 2400
NoConn ~ 10550 2500
NoConn ~ 10550 2600
NoConn ~ 10550 2700
NoConn ~ 10550 2800
NoConn ~ 10550 2900
NoConn ~ 10550 3000
NoConn ~ 8900 2800
NoConn ~ 8900 2700
NoConn ~ 8900 2600
NoConn ~ 8900 2500
NoConn ~ 8650 1800
NoConn ~ 8950 1450
Text Label 3850 3150 0    60   ~ 0
10(**/SS)
Text Label 3550 2050 0    60   ~ 0
11(**/MOSI)
Text Label 5600 2150 0    60   ~ 0
12(MISO)
Text Label 4050 3000 0    60   ~ 0
13(SCK)
Wire Wire Line
	4250 2250 4050 2250
Wire Wire Line
	4050 2250 4050 3000
Wire Wire Line
	5450 2150 5600 2150
Wire Wire Line
	3850 3150 3850 2350
Wire Wire Line
	3850 2350 4250 2350
Wire Wire Line
	4250 2150 3550 2150
Wire Wire Line
	3550 2150 3550 2050
$Comp
L power:+3.3V #PWR0106
U 1 1 5D4C918F
P 4850 1600
F 0 "#PWR0106" H 4850 1450 50  0001 C CNN
F 1 "+3.3V" V 4850 1850 50  0000 C CNN
F 2 "" H 4850 1600 50  0000 C CNN
F 3 "" H 4850 1600 50  0000 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1850 4850 1650
Wire Wire Line
	900  2950 1700 2950
NoConn ~ 9350 1450
$Comp
L power:GND #PWR0107
U 1 1 5D4D1FF5
P 1700 3250
F 0 "#PWR0107" H 1700 3000 50  0001 C CNN
F 1 "GND" H 1700 3100 50  0000 C CNN
F 2 "" H 1700 3250 50  0000 C CNN
F 3 "" H 1700 3250 50  0000 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2950 1700 3250
Wire Wire Line
	4250 2550 4150 2550
Wire Wire Line
	4150 2550 4150 2450
Wire Wire Line
	4150 1650 4850 1650
Connection ~ 4850 1650
Wire Wire Line
	4850 1650 4850 1600
Wire Wire Line
	4250 2450 4150 2450
Connection ~ 4150 2450
Wire Wire Line
	4150 2450 4150 1650
$Comp
L power:+3.3V #PWR07
U 1 1 5D4A58F9
P 5900 1050
F 0 "#PWR07" H 5900 900 50  0001 C CNN
F 1 "+3.3V" V 5900 1300 50  0000 C CNN
F 2 "" H 5900 1050 50  0000 C CNN
F 3 "" H 5900 1050 50  0000 C CNN
	1    5900 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D4A73A8
P 5900 1500
F 0 "#PWR08" H 5900 1250 50  0001 C CNN
F 1 "GND" H 5900 1350 50  0000 C CNN
F 2 "" H 5900 1500 50  0000 C CNN
F 3 "" H 5900 1500 50  0000 C CNN
	1    5900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D4A8E69
P 5900 1300
F 0 "C2" H 6015 1346 50  0000 L CNN
F 1 "0.1uF" H 6015 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 1150 50  0001 C CNN
F 3 "~" H 5900 1300 50  0001 C CNN
	1    5900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1500 5900 1450
Wire Wire Line
	5900 1050 5900 1150
$Comp
L power:+3.3V #PWR05
U 1 1 5D4AC6B5
P 2700 950
F 0 "#PWR05" H 2700 800 50  0001 C CNN
F 1 "+3.3V" V 2700 1200 50  0000 C CNN
F 2 "" H 2700 950 50  0000 C CNN
F 3 "" H 2700 950 50  0000 C CNN
	1    2700 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D4AC6BB
P 2700 1400
F 0 "#PWR06" H 2700 1150 50  0001 C CNN
F 1 "GND" H 2700 1250 50  0000 C CNN
F 2 "" H 2700 1400 50  0000 C CNN
F 3 "" H 2700 1400 50  0000 C CNN
	1    2700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D4AC6C1
P 2700 1200
F 0 "C1" H 2815 1246 50  0000 L CNN
F 1 "0.1uF" H 2815 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 1050 50  0001 C CNN
F 3 "~" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1400 2700 1350
Wire Wire Line
	2700 950  2700 1050
Wire Wire Line
	2100 2400 2350 2400
Wire Wire Line
	2350 2400 2350 2950
Connection ~ 2350 2950
Wire Wire Line
	2350 2950 1700 2950
NoConn ~ 9400 2900
NoConn ~ 8900 3000
$Comp
L power:GND #PWR0108
U 1 1 5D4B92C0
P 10350 850
F 0 "#PWR0108" H 10350 600 50  0001 C CNN
F 1 "GND" H 10350 700 50  0000 C CNN
F 2 "" H 10350 850 50  0000 C CNN
F 3 "" H 10350 850 50  0000 C CNN
	1    10350 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 850  10800 850 
Wire Wire Line
	10800 850  10900 850 
Connection ~ 10800 850 
Connection ~ 10900 850 
Wire Wire Line
	10900 850  11000 850 
Connection ~ 11000 850 
Wire Wire Line
	11000 850  11100 850 
$EndSCHEMATC
