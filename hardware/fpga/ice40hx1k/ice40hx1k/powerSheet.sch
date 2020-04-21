EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Regulator_Switching:LTC3406ES5 U1
U 1 1 5E5E25FE
P 1850 2500
F 0 "U1" H 1850 2981 50  0000 C CNN
F 1 "LTC3406ES5" H 1850 2890 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 2550 2250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/3406b12fs.pdf" H 1850 2450 50  0001 C CNN
	1    1850 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5E5E2604
P 2700 2400
F 0 "L1" V 2519 2400 50  0000 C CNN
F 1 "2.2uH" V 2610 2400 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 2700 2400 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E5E260A
P 3100 2550
F 0 "C2" H 3215 2596 50  0000 L CNN
F 1 "10uF" H 3215 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 2400 50  0001 C CNN
F 3 "~" H 3100 2550 50  0001 C CNN
	1    3100 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E5E2610
P 1100 2500
F 0 "C1" H 1215 2546 50  0000 L CNN
F 1 "4.7uF" H 1215 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1138 2350 50  0001 C CNN
F 3 "~" H 1100 2500 50  0001 C CNN
	1    1100 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E5E2616
P 2450 2750
F 0 "R1" H 2520 2796 50  0000 L CNN
F 1 "100kOhm" H 2520 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2380 2750 50  0001 C CNN
F 3 "~" H 2450 2750 50  0001 C CNN
	1    2450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E5E261C
P 2750 2750
F 0 "R2" H 2820 2796 50  0000 L CNN
F 1 "100kOhm" H 2820 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2680 2750 50  0001 C CNN
F 3 "~" H 2750 2750 50  0001 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2400 2550 2400
Wire Wire Line
	2850 2400 2950 2400
Wire Wire Line
	2250 2600 2450 2600
Wire Wire Line
	2450 2600 2750 2600
Connection ~ 2450 2600
Wire Wire Line
	2750 2900 2950 2900
Wire Wire Line
	2950 2900 2950 2400
Connection ~ 2950 2400
Wire Wire Line
	2950 2400 3100 2400
Wire Wire Line
	1850 2200 1850 1900
Wire Wire Line
	1850 1900 1450 1900
Wire Wire Line
	1450 1900 1450 2500
Wire Wire Line
	1100 2350 1100 1900
Wire Wire Line
	1100 1900 1450 1900
Connection ~ 1450 1900
Wire Wire Line
	1100 2650 1100 3100
Wire Wire Line
	1100 3100 1850 3100
Wire Wire Line
	2450 3100 2450 2900
Wire Wire Line
	1850 2800 1850 3100
Connection ~ 1850 3100
Wire Wire Line
	1850 3100 2000 3100
Wire Wire Line
	2450 3100 3100 3100
Wire Wire Line
	3100 3100 3100 2700
Connection ~ 2450 3100
$Comp
L power:+1V2 #PWR06
U 1 1 5E5E263A
P 3100 2300
F 0 "#PWR06" H 3100 2150 50  0001 C CNN
F 1 "+1V2" H 3115 2473 50  0000 C CNN
F 2 "" H 3100 2300 50  0001 C CNN
F 3 "" H 3100 2300 50  0001 C CNN
	1    3100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 3100 2400
Connection ~ 3100 2400
$Comp
L power:GND #PWR03
U 1 1 5E5E2642
P 2000 3350
F 0 "#PWR03" H 2000 3100 50  0001 C CNN
F 1 "GND" H 2005 3177 50  0000 C CNN
F 2 "" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3100 2000 3350
Connection ~ 2000 3100
Wire Wire Line
	2000 3100 2450 3100
$Comp
L power:+3V3 #PWR01
U 1 1 5E5E264B
P 1450 1700
F 0 "#PWR01" H 1450 1550 50  0001 C CNN
F 1 "+3V3" H 1465 1873 50  0000 C CNN
F 2 "" H 1450 1700 50  0001 C CNN
F 3 "" H 1450 1700 50  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1700 1450 1900
$EndSCHEMATC
