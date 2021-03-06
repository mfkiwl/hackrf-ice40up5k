EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Connector:Conn_01x20_Male J1
U 1 1 5F016A0D
P 2750 2900
F 0 "J1" H 2858 3981 50  0000 C CNN
F 1 "Conn_01x20_Male" H 2858 3890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Horizontal" H 2750 2900 50  0001 C CNN
F 3 "~" H 2750 2900 50  0001 C CNN
	1    2750 2900
	1    0    0    -1  
$EndComp
Text GLabel 2950 3600 2    50   Input ~ 0
master_rx
Text GLabel 2950 3500 2    50   Input ~ 0
master_tx
$Comp
L power:GND #PWR01
U 1 1 5F01E216
P 3850 4350
F 0 "#PWR01" H 3850 4100 50  0001 C CNN
F 1 "GND" H 3855 4177 50  0000 C CNN
F 2 "" H 3850 4350 50  0001 C CNN
F 3 "" H 3850 4350 50  0001 C CNN
	1    3850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4350 3850 3900
Wire Wire Line
	3850 3900 2950 3900
Wire Wire Line
	2950 3700 3850 3700
Wire Wire Line
	3850 3700 3850 3900
Connection ~ 3850 3900
Wire Wire Line
	2950 2000 3850 2000
Wire Wire Line
	3850 2000 3850 2300
Connection ~ 3850 3700
$Comp
L power:+3V3 #PWR02
U 1 1 5F01F51A
P 4750 1500
F 0 "#PWR02" H 4750 1350 50  0001 C CNN
F 1 "+3V3" H 4765 1673 50  0000 C CNN
F 2 "" H 4750 1500 50  0001 C CNN
F 3 "" H 4750 1500 50  0001 C CNN
	1    4750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3800 4750 3800
Wire Wire Line
	4750 3800 4750 1500
Wire Wire Line
	2950 3400 3850 3400
Connection ~ 3850 3400
Wire Wire Line
	3850 3400 3850 3700
Wire Wire Line
	2950 2700 3850 2700
Connection ~ 3850 2700
Wire Wire Line
	3850 2700 3850 3400
Wire Wire Line
	2950 2300 3850 2300
Connection ~ 3850 2300
Wire Wire Line
	3850 2300 3850 2700
NoConn ~ 2950 3300
NoConn ~ 2950 3200
NoConn ~ 2950 3100
NoConn ~ 2950 3000
NoConn ~ 2950 2900
NoConn ~ 2950 2800
NoConn ~ 2950 2600
NoConn ~ 2950 2500
NoConn ~ 2950 2400
NoConn ~ 2950 2200
NoConn ~ 2950 2100
$EndSCHEMATC
