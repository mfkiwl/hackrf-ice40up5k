EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 2450 5350 3000
$Comp
L Device:L L?
U 1 1 5F063194
P 4600 2450
F 0 "L?" V 4419 2450 50  0000 C CNN
F 1 "L" V 4510 2450 50  0000 C CNN
F 2 "" H 4600 2450 50  0001 C CNN
F 3 "~" H 4600 2450 50  0001 C CNN
	1    4600 2450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F06319C
P 2900 2950
F 0 "C?" H 3015 2996 50  0000 L CNN
F 1 "C" H 3015 2905 50  0000 L CNN
F 2 "" H 2938 2800 50  0001 C CNN
F 3 "~" H 2900 2950 50  0001 C CNN
	1    2900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2800 2900 2450
Wire Wire Line
	2900 3100 2900 4050
Wire Wire Line
	5350 4050 5350 3400
$Comp
L Device:C C?
U 1 1 5F0631A7
P 6750 3050
F 0 "C?" H 6865 3096 50  0000 L CNN
F 1 "C" H 6865 3005 50  0000 L CNN
F 2 "" H 6788 2900 50  0001 C CNN
F 3 "~" H 6750 3050 50  0001 C CNN
	1    6750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2450 6750 2450
Wire Wire Line
	6750 2450 6750 2900
Wire Wire Line
	6750 3200 6750 3300
Wire Wire Line
	6750 4050 5350 4050
Connection ~ 5350 4050
$Comp
L Device:R R?
U 1 1 5F0631B2
P 7750 3100
F 0 "R?" H 7820 3146 50  0000 L CNN
F 1 "R" H 7820 3055 50  0000 L CNN
F 2 "" V 7680 3100 50  0001 C CNN
F 3 "~" H 7750 3100 50  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2450 7300 2450
Wire Wire Line
	7750 2450 7750 2950
Connection ~ 6750 2450
Wire Wire Line
	7750 3250 7750 4050
Wire Wire Line
	7750 4050 7300 4050
Connection ~ 6750 4050
$Comp
L power:+3V3 #PWR?
U 1 1 5F0631BE
P 2600 2200
F 0 "#PWR?" H 2600 2050 50  0001 C CNN
F 1 "+3V3" H 2615 2373 50  0000 C CNN
F 2 "" H 2600 2200 50  0001 C CNN
F 3 "" H 2600 2200 50  0001 C CNN
	1    2600 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0631C4
P 2500 4400
F 0 "#PWR?" H 2500 4150 50  0001 C CNN
F 1 "GND" H 2505 4227 50  0000 C CNN
F 2 "" H 2500 4400 50  0001 C CNN
F 3 "" H 2500 4400 50  0001 C CNN
	1    2500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 2900 2450
Wire Wire Line
	2600 2200 2600 2450
Wire Wire Line
	2500 4400 2500 4050
Wire Wire Line
	2500 4050 2900 4050
$Comp
L Device:R R?
U 1 1 5F0631D0
P 7300 2850
F 0 "R?" H 7370 2896 50  0000 L CNN
F 1 "R" H 7370 2805 50  0000 L CNN
F 2 "" V 7230 2850 50  0001 C CNN
F 3 "~" H 7300 2850 50  0001 C CNN
	1    7300 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F0631D6
P 7300 3600
F 0 "R?" H 7370 3646 50  0000 L CNN
F 1 "R" H 7370 3555 50  0000 L CNN
F 2 "" V 7230 3600 50  0001 C CNN
F 3 "~" H 7300 3600 50  0001 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3750 7300 4050
Connection ~ 7300 4050
Wire Wire Line
	7300 4050 6750 4050
Wire Wire Line
	7300 3450 7300 3000
Wire Wire Line
	7300 2700 7300 2450
Connection ~ 7300 2450
Wire Wire Line
	7300 2450 7750 2450
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5F0631E9
P 8850 3200
F 0 "J?" H 8822 3132 50  0000 R CNN
F 1 "Conn_01x03_Male" H 8822 3223 50  0000 R CNN
F 2 "" H 8850 3200 50  0001 C CNN
F 3 "~" H 8850 3200 50  0001 C CNN
	1    8850 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 3300 8250 3300
Wire Wire Line
	8250 3300 8250 3200
Wire Wire Line
	8250 3200 8650 3200
Connection ~ 6750 3300
Wire Wire Line
	6750 3300 6750 4050
Wire Wire Line
	4300 3300 4300 3200
Wire Wire Line
	4300 3200 5050 3200
Wire Wire Line
	1750 3300 4300 3300
$Comp
L power:+3V3 #PWR?
U 1 1 5F0631F7
P 2150 2950
F 0 "#PWR?" H 2150 2800 50  0001 C CNN
F 1 "+3V3" H 2165 3123 50  0000 C CNN
F 2 "" H 2150 2950 50  0001 C CNN
F 3 "" H 2150 2950 50  0001 C CNN
	1    2150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F0631FD
P 8350 2850
F 0 "#PWR?" H 8350 2700 50  0001 C CNN
F 1 "+3V3" H 8365 3023 50  0000 C CNN
F 2 "" H 8350 2850 50  0001 C CNN
F 3 "" H 8350 2850 50  0001 C CNN
	1    8350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2850 8350 3100
Wire Wire Line
	8350 3100 8650 3100
Wire Wire Line
	1750 3200 2150 3200
Wire Wire Line
	2150 3200 2150 2950
$Comp
L power:GND #PWR?
U 1 1 5F063207
P 2050 4300
F 0 "#PWR?" H 2050 4050 50  0001 C CNN
F 1 "GND" H 2055 4127 50  0000 C CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F06320D
P 8450 3400
F 0 "#PWR?" H 8450 3150 50  0001 C CNN
F 1 "GND" H 8455 3227 50  0000 C CNN
F 2 "" H 8450 3400 50  0001 C CNN
F 3 "" H 8450 3400 50  0001 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3300 8450 3300
Wire Wire Line
	8450 3300 8450 3400
Wire Wire Line
	1750 4100 2050 4100
Wire Wire Line
	2050 4100 2050 4300
Wire Wire Line
	4150 2950 4150 2450
Wire Wire Line
	4150 2450 4450 2450
Wire Wire Line
	4150 3350 4150 4050
Connection ~ 4150 4050
Wire Wire Line
	4150 4050 5350 4050
$Comp
L Transistor_FET:2N7002K Q?
U 1 1 5F0CE0CA
P 5250 3200
F 0 "Q?" H 5454 3246 50  0000 L CNN
F 1 "2N7002K" H 5454 3155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5450 3125 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 5250 3200 50  0001 L CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002K Q?
U 1 1 5F0CFFBA
P 4050 3150
F 0 "Q?" H 4254 3196 50  0000 L CNN
F 1 "2N7002K" H 4254 3105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4250 3075 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 4050 3150 50  0001 L CNN
	1    4050 3150
	1    0    0    -1  
$EndComp
Connection ~ 2900 4050
Wire Wire Line
	2900 4050 4150 4050
$Comp
L Transistor_FET:2N7002K Q?
U 1 1 5F0FAB6A
P 6250 2550
F 0 "Q?" H 6454 2596 50  0000 L CNN
F 1 "2N7002K" H 6454 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6450 2475 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 6250 2550 50  0001 L CNN
	1    6250 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 2450 5350 2450
Connection ~ 5350 2450
Wire Wire Line
	5350 2450 6050 2450
$Comp
L Transistor_FET:2N7002K Q?
U 1 1 5F115B33
P 3500 2550
F 0 "Q?" H 3704 2596 50  0000 L CNN
F 1 "2N7002K" H 3704 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3700 2475 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30896.pdf" H 3500 2550 50  0001 L CNN
	1    3500 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 2450 3300 2450
Connection ~ 2900 2450
Wire Wire Line
	3700 2450 4150 2450
Connection ~ 4150 2450
$EndSCHEMATC