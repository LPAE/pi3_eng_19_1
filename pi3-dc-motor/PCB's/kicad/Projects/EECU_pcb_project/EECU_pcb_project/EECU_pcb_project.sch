EESchema Schematic File Version 4
LIBS:EECU_pcb_project-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Engine Eletronic Control Unit"
Date "2019-05-14"
Rev "v01"
Comp "Red Tails"
Comment1 "Author: Rafael Hiller"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 5CDDC934
P 3400 5150
F 0 "#PWR0101" H 3400 4900 50  0001 C CNN
F 1 "GND" H 3405 4977 50  0000 C CNN
F 2 "" H 3400 5150 50  0001 C CNN
F 3 "" H 3400 5150 50  0001 C CNN
	1    3400 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5CDDC010
P 3300 5350
F 0 "#PWR0102" H 3300 5200 50  0001 C CNN
F 1 "+5V" H 3315 5523 50  0000 C CNN
F 2 "" H 3300 5350 50  0001 C CNN
F 3 "" H 3300 5350 50  0001 C CNN
	1    3300 5350
	0    1    1    0   
$EndComp
$Comp
L BluePillShield:Conn_01x03_Male J4
U 1 1 5CDCF108
P 2850 4400
F 0 "J4" H 2958 4681 50  0000 C CNN
F 1 "Temp_Right" H 2958 4590 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S03B-XH-A_03x2.50mm_Angled" H 2850 4400 50  0001 C CNN
F 3 "~" H 2850 4400 50  0001 C CNN
	1    2850 4400
	1    0    0    -1  
$EndComp
$Comp
L BluePillShield:Conn_01x03_Male J3
U 1 1 5CDCFBC0
P 2850 5250
F 0 "J3" H 2958 5515 50  0000 C CNN
F 1 "Temp_Left" H 2958 5432 39  0000 C CNN
F 2 "Connectors_JST:JST_XH_S03B-XH-A_03x2.50mm_Angled" H 2850 5250 50  0001 C CNN
F 3 "~" H 2850 5250 50  0001 C CNN
	1    2850 5250
	1    0    0    -1  
$EndComp
$Comp
L BluePillShield:Conn_01x03_Male J2
U 1 1 5CDD0A2F
P 2850 5900
F 0 "J2" H 2958 6181 50  0000 C CNN
F 1 "Data_out" H 2958 6090 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S03B-XH-A_03x2.50mm_Angled" H 2850 5900 50  0001 C CNN
F 3 "~" H 2850 5900 50  0001 C CNN
	1    2850 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CDD3F60
P 3250 4400
F 0 "#PWR0103" H 3250 4150 50  0001 C CNN
F 1 "GND" H 3255 4227 50  0000 C CNN
F 2 "" H 3250 4400 50  0001 C CNN
F 3 "" H 3250 4400 50  0001 C CNN
	1    3250 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5CDD8180
P 3350 4150
F 0 "#PWR0104" H 3350 4000 50  0001 C CNN
F 1 "+5V" H 3365 4323 50  0000 C CNN
F 2 "" H 3350 4150 50  0001 C CNN
F 3 "" H 3350 4150 50  0001 C CNN
	1    3350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4300 3350 4150
Wire Wire Line
	3050 5250 3300 5250
Wire Wire Line
	3050 4300 3350 4300
Text GLabel 3600 7500 2    50   Input ~ 0
CAN_H
Text GLabel 3600 7400 2    50   Input ~ 0
CAN_L
$Comp
L power:GND #PWR0105
U 1 1 5CDF54EE
P 3600 7050
F 0 "#PWR0105" H 3600 6800 50  0001 C CNN
F 1 "GND" V 3605 6922 50  0000 R CNN
F 2 "" H 3600 7050 50  0001 C CNN
F 3 "" H 3600 7050 50  0001 C CNN
	1    3600 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5CDF6ADC
P 3600 6950
F 0 "#PWR0106" H 3600 6800 50  0001 C CNN
F 1 "+12V" V 3615 7078 50  0000 L CNN
F 2 "" H 3600 6950 50  0001 C CNN
F 3 "" H 3600 6950 50  0001 C CNN
	1    3600 6950
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 5CE14620
P 6000 2700
F 0 "U3" H 6000 2942 50  0000 C CNN
F 1 "AMS1117-3.3" H 6000 2851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6000 2900 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 6100 2450 50  0001 C CNN
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5CE176D3
P 5500 3000
F 0 "C1" H 5618 3046 50  0000 L CNN
F 1 "10uF" H 5618 2955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 5538 2850 50  0001 C CNN
F 3 "~" H 5500 3000 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5CE17CE3
P 6500 3000
F 0 "C2" H 6618 3046 50  0000 L CNN
F 1 "22uF" H 6618 2955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6538 2850 50  0001 C CNN
F 3 "~" H 6500 3000 50  0001 C CNN
	1    6500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CE186A0
P 6000 3350
F 0 "#PWR0107" H 6000 3100 50  0001 C CNN
F 1 "GND" H 6005 3177 50  0000 C CNN
F 2 "" H 6000 3350 50  0001 C CNN
F 3 "" H 6000 3350 50  0001 C CNN
	1    6000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CE18DC2
P 5500 3350
F 0 "#PWR0108" H 5500 3100 50  0001 C CNN
F 1 "GND" H 5505 3177 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CE1972B
P 6500 3350
F 0 "#PWR0109" H 6500 3100 50  0001 C CNN
F 1 "GND" H 6505 3177 50  0000 C CNN
F 2 "" H 6500 3350 50  0001 C CNN
F 3 "" H 6500 3350 50  0001 C CNN
	1    6500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3000 6000 3350
Wire Wire Line
	5500 3150 5500 3350
Wire Wire Line
	5500 2850 5500 2700
Wire Wire Line
	5500 2700 5700 2700
Wire Wire Line
	6500 3150 6500 3350
Wire Wire Line
	6300 2700 6500 2700
Wire Wire Line
	6500 2700 6500 2850
$Comp
L power:+5V #PWR0110
U 1 1 5CE2296A
P 5200 2650
F 0 "#PWR0110" H 5200 2500 50  0001 C CNN
F 1 "+5V" H 5215 2823 50  0000 C CNN
F 2 "" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5CE22F9E
P 6700 2650
F 0 "#PWR0111" H 6700 2500 50  0001 C CNN
F 1 "+3.3V" H 6715 2823 50  0000 C CNN
F 2 "" H 6700 2650 50  0001 C CNN
F 3 "" H 6700 2650 50  0001 C CNN
	1    6700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2650 5200 2700
Wire Wire Line
	5200 2700 5500 2700
Connection ~ 5500 2700
Wire Wire Line
	6500 2700 6700 2700
Wire Wire Line
	6700 2700 6700 2650
Connection ~ 6500 2700
Text GLabel 3250 5900 2    50   Input ~ 0
RPM_OUT_RIGHT
Text GLabel 3250 5800 2    50   Input ~ 0
TEMP_OUT_RIGHT
$Comp
L power:GND #PWR0112
U 1 1 5CE3325F
P 3200 6100
F 0 "#PWR0112" H 3200 5850 50  0001 C CNN
F 1 "GND" H 3205 5927 50  0000 C CNN
F 2 "" H 3200 6100 50  0001 C CNN
F 3 "" H 3200 6100 50  0001 C CNN
	1    3200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6000 3200 6000
Wire Wire Line
	3200 6000 3200 6100
$Comp
L EECU_Library:Switching_Regulator U2
U 1 1 5CE37126
P 5850 2000
F 0 "U2" H 6075 2465 50  0000 C CNN
F 1 "Switching_Regulator" H 6075 2374 50  0000 C CNN
F 2 "Switching_regulator_foot:switching_regulator" H 5850 2350 50  0001 C CNN
F 3 "" H 5850 2350 50  0001 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5CE37E15
P 6500 2000
F 0 "#PWR0113" H 6500 1750 50  0001 C CNN
F 1 "GND" H 6505 1827 50  0000 C CNN
F 2 "" H 6500 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5CE388F7
P 5600 2000
F 0 "#PWR0114" H 5600 1750 50  0001 C CNN
F 1 "GND" H 5605 1827 50  0000 C CNN
F 2 "" H 5600 2000 50  0001 C CNN
F 3 "" H 5600 2000 50  0001 C CNN
	1    5600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2000 5600 1900
Wire Wire Line
	5600 1900 5750 1900
Wire Wire Line
	6500 2000 6500 1900
Wire Wire Line
	6500 1900 6400 1900
$Comp
L power:+12V #PWR0115
U 1 1 5CE3DAD3
P 5600 1700
F 0 "#PWR0115" H 5600 1550 50  0001 C CNN
F 1 "+12V" H 5615 1873 50  0000 C CNN
F 2 "" H 5600 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1700 5600 1800
Wire Wire Line
	5600 1800 5750 1800
$Comp
L power:+5V #PWR0116
U 1 1 5CE40E9E
P 6500 1700
F 0 "#PWR0116" H 6500 1550 50  0001 C CNN
F 1 "+5V" H 6515 1873 50  0000 C CNN
F 2 "" H 6500 1700 50  0001 C CNN
F 3 "" H 6500 1700 50  0001 C CNN
	1    6500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1800 6500 1700
Wire Wire Line
	6400 1800 6500 1800
Text GLabel 3250 4500 2    50   Input ~ 0
TEMP_IN_RIGHT
Text GLabel 3300 5250 2    50   Input ~ 0
TEMP_IN_LEFT
$Comp
L bluepill_breakouts:BluePill_STM32F103C U1
U 1 1 5CE394F4
P 6050 4750
F 0 "U1" H 6075 5715 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 6075 5624 50  0000 C CNN
F 2 "BluePill_Shield:BluePill_STM32F103C" H 6100 3150 50  0001 C CNN
F 3 "" H 6050 3250 50  0001 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
Text GLabel 4950 4650 0    50   Input ~ 0
TEMP_OUT_LEFT
$Comp
L power:GND #PWR0117
U 1 1 5CE3B58F
P 7200 4150
F 0 "#PWR0117" H 7200 3900 50  0001 C CNN
F 1 "GND" H 7205 3977 50  0000 C CNN
F 2 "" H 7200 4150 50  0001 C CNN
F 3 "" H 7200 4150 50  0001 C CNN
	1    7200 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5CE3D60D
P 7200 3950
F 0 "#PWR0118" H 7200 3800 50  0001 C CNN
F 1 "+3.3V" H 7215 4123 50  0000 C CNN
F 2 "" H 7200 3950 50  0001 C CNN
F 3 "" H 7200 3950 50  0001 C CNN
	1    7200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3950 7200 4050
Wire Wire Line
	7200 4050 6950 4050
Text GLabel 7400 4450 2    50   Input ~ 0
CAN_RX
Wire Wire Line
	7400 4450 6950 4450
Wire Wire Line
	7200 4150 6950 4150
Text GLabel 7400 4350 2    50   Input ~ 0
CAN_TX
Wire Wire Line
	6950 4350 7400 4350
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5CE4FAE1
P 2850 3450
F 0 "J5" H 2958 3731 50  0000 C CNN
F 1 "RPM_Right" H 2958 3640 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S03B-XH-A_03x2.50mm_Angled" H 2850 3450 50  0001 C CNN
F 3 "~" H 2850 3450 50  0001 C CNN
	1    2850 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5CE50671
P 2850 2600
F 0 "J6" H 2958 2881 50  0000 C CNN
F 1 "RPM_Left" H 2958 2790 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S03B-XH-A_03x2.50mm_Angled" H 2850 2600 50  0001 C CNN
F 3 "~" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5CE51548
P 3300 2800
F 0 "#PWR0129" H 3300 2550 50  0001 C CNN
F 1 "GND" H 3305 2627 50  0000 C CNN
F 2 "" H 3300 2800 50  0001 C CNN
F 3 "" H 3300 2800 50  0001 C CNN
	1    3300 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5CE518C9
P 3300 3650
F 0 "#PWR0130" H 3300 3400 50  0001 C CNN
F 1 "GND" H 3305 3477 50  0000 C CNN
F 2 "" H 3300 3650 50  0001 C CNN
F 3 "" H 3300 3650 50  0001 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2700 3300 2800
Wire Wire Line
	3050 3550 3300 3550
Wire Wire Line
	3300 3550 3300 3650
$Comp
L power:+5V #PWR0131
U 1 1 5CE55436
P 3300 2350
F 0 "#PWR0131" H 3300 2200 50  0001 C CNN
F 1 "+5V" H 3315 2523 50  0000 C CNN
F 2 "" H 3300 2350 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
	1    3300 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 5CE55B8E
P 3300 3250
F 0 "#PWR0132" H 3300 3100 50  0001 C CNN
F 1 "+5V" H 3315 3423 50  0000 C CNN
F 2 "" H 3300 3250 50  0001 C CNN
F 3 "" H 3300 3250 50  0001 C CNN
	1    3300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3350 3300 3350
Wire Wire Line
	3300 3350 3300 3250
Wire Wire Line
	3050 2500 3300 2500
Wire Wire Line
	3300 2500 3300 2350
Text GLabel 3300 2600 2    50   Input ~ 0
RPM_IN_LEFT
Wire Wire Line
	3050 2700 3300 2700
Wire Wire Line
	3050 2600 3300 2600
Text GLabel 3300 3450 2    50   Input ~ 0
RPM_IN_RIGHT
Wire Wire Line
	3050 3450 3300 3450
$Comp
L power:GND #PWR03
U 1 1 5CE6AC1D
P 5050 6250
F 0 "#PWR03" H 5050 6000 50  0001 C CNN
F 1 "GND" H 5055 6077 50  0000 C CNN
F 2 "" H 5050 6250 50  0001 C CNN
F 3 "" H 5050 6250 50  0001 C CNN
	1    5050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6250 5050 5950
Wire Wire Line
	5050 5850 5050 5950
Wire Wire Line
	5050 5950 5200 5950
Wire Wire Line
	5050 5850 5200 5850
Connection ~ 5050 5950
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U4
U 1 1 5CE7198B
P 6000 7400
F 0 "U4" H 6000 7981 50  0000 C CNN
F 1 "MCP2551-I-SN" H 6000 7890 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6000 6900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 6000 7400 50  0001 C CNN
	1    6000 7400
	1    0    0    -1  
$EndComp
Text GLabel 6700 7300 2    50   Input ~ 0
CAN_H
Text GLabel 6700 7500 2    50   Input ~ 0
CAN_L
Text GLabel 5200 7300 0    50   Input ~ 0
CAN_RX
Text GLabel 5200 7200 0    50   Input ~ 0
CAN_TX
Wire Wire Line
	5200 7200 5500 7200
Wire Wire Line
	5200 7300 5500 7300
Wire Wire Line
	6500 7300 6700 7300
Wire Wire Line
	6500 7500 6700 7500
$Comp
L power:+3.3V #PWR013
U 1 1 5CE8FC1A
P 10900 9000
AR Path="/5CE8FC1A" Ref="#PWR013"  Part="1" 
AR Path="/5CDE14E0/5CE8FC1A" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 10900 8850 50  0001 C CNN
F 1 "+3.3V" H 10915 9173 50  0000 C CNN
F 2 "" H 10900 9000 50  0001 C CNN
F 3 "" H 10900 9000 50  0001 C CNN
	1    10900 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 9100 10900 9100
Wire Wire Line
	10900 9100 10900 9000
$Comp
L power:+5V #PWR09
U 1 1 5CE8FC30
P 9450 1750
AR Path="/5CE8FC30" Ref="#PWR09"  Part="1" 
AR Path="/5CDE14E0/5CE8FC30" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 9450 1600 50  0001 C CNN
F 1 "+5V" V 9465 1878 50  0000 L CNN
F 2 "" H 9450 1750 50  0001 C CNN
F 3 "" H 9450 1750 50  0001 C CNN
	1    9450 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 1750 9600 1750
$Comp
L Amplifier_Operational:LM324 U5
U 1 1 5CE8FC37
P 8600 3150
AR Path="/5CE8FC37" Ref="U5"  Part="1" 
AR Path="/5CDE14E0/5CE8FC37" Ref="U?"  Part="1" 
F 0 "U5" H 8600 3517 50  0000 C CNN
F 1 "LM324" H 8600 3426 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8550 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8650 3350 50  0001 C CNN
	1    8600 3150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U5
U 2 1 5CE8FC3D
P 10500 3050
AR Path="/5CE8FC3D" Ref="U5"  Part="2" 
AR Path="/5CDE14E0/5CE8FC3D" Ref="U?"  Part="2" 
F 0 "U5" H 10500 3417 50  0000 C CNN
F 1 "LM324" H 10500 3326 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10450 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 10550 3250 50  0001 C CNN
	2    10500 3050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U5
U 5 1 5CE8FC49
P 9900 1650
AR Path="/5CE8FC49" Ref="U5"  Part="5" 
AR Path="/5CDE14E0/5CE8FC49" Ref="U?"  Part="5" 
F 0 "U5" H 9858 1696 50  0000 L CNN
F 1 "LM324" H 9858 1605 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9850 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9950 1850 50  0001 C CNN
	5    9900 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CE8FC4F
P 10300 1750
AR Path="/5CE8FC4F" Ref="#PWR012"  Part="1" 
AR Path="/5CDE14E0/5CE8FC4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 10300 1500 50  0001 C CNN
F 1 "GND" H 10305 1577 50  0000 C CNN
F 2 "" H 10300 1750 50  0001 C CNN
F 3 "" H 10300 1750 50  0001 C CNN
	1    10300 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 3450 9000 3150
Wire Wire Line
	9000 3150 8900 3150
$Comp
L Device:R R5
U 1 1 5CE8FC57
P 9800 3150
AR Path="/5CE8FC57" Ref="R5"  Part="1" 
AR Path="/5CDE14E0/5CE8FC57" Ref="R?"  Part="1" 
F 0 "R5" H 9870 3196 50  0000 L CNN
F 1 "10k" H 9870 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9730 3150 50  0001 C CNN
F 3 "~" H 9800 3150 50  0001 C CNN
	1    9800 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CE8FC5D
P 9500 3500
AR Path="/5CE8FC5D" Ref="R2"  Part="1" 
AR Path="/5CDE14E0/5CE8FC5D" Ref="R?"  Part="1" 
F 0 "R2" H 9570 3546 50  0000 L CNN
F 1 "100" H 9570 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9430 3500 50  0001 C CNN
F 3 "~" H 9500 3500 50  0001 C CNN
	1    9500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5CE8FC63
P 10400 2650
AR Path="/5CE8FC63" Ref="R8"  Part="1" 
AR Path="/5CDE14E0/5CE8FC63" Ref="R?"  Part="1" 
F 0 "R8" H 10470 2696 50  0000 L CNN
F 1 "30k" H 10470 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10330 2650 50  0001 C CNN
F 3 "~" H 10400 2650 50  0001 C CNN
	1    10400 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5CE8FC69
P 10100 3500
AR Path="/5CE8FC69" Ref="R6"  Part="1" 
AR Path="/5CDE14E0/5CE8FC69" Ref="R?"  Part="1" 
F 0 "R6" H 10170 3546 50  0000 L CNN
F 1 "30k" H 10170 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10030 3500 50  0001 C CNN
F 3 "~" H 10100 3500 50  0001 C CNN
	1    10100 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5CE8FC6F
P 9800 2950
AR Path="/5CE8FC6F" Ref="R4"  Part="1" 
AR Path="/5CDE14E0/5CE8FC6F" Ref="R?"  Part="1" 
F 0 "R4" H 9870 2996 50  0000 L CNN
F 1 "10k" H 9870 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9730 2950 50  0001 C CNN
F 3 "~" H 9800 2950 50  0001 C CNN
	1    9800 2950
	0    -1   -1   0   
$EndComp
Connection ~ 9000 3150
Wire Wire Line
	9950 3150 10100 3150
Wire Wire Line
	10100 3150 10100 3350
Wire Wire Line
	10100 3150 10200 3150
Connection ~ 10100 3150
$Comp
L power:GND #PWR06
U 1 1 5CE8FC7A
P 10100 3750
AR Path="/5CE8FC7A" Ref="#PWR06"  Part="1" 
AR Path="/5CDE14E0/5CE8FC7A" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 10100 3500 50  0001 C CNN
F 1 "GND" H 10105 3577 50  0000 C CNN
F 2 "" H 10100 3750 50  0001 C CNN
F 3 "" H 10100 3750 50  0001 C CNN
	1    10100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3750 10100 3650
Wire Wire Line
	9000 3150 9650 3150
Wire Wire Line
	10800 3050 10850 3050
Wire Wire Line
	9950 2950 10150 2950
Wire Wire Line
	10150 2950 10150 2650
Wire Wire Line
	10150 2650 10250 2650
Connection ~ 10150 2950
Wire Wire Line
	10150 2950 10200 2950
Wire Wire Line
	10550 2650 10850 2650
Wire Wire Line
	10850 2650 10850 3050
Wire Wire Line
	9500 3350 9500 2950
Wire Wire Line
	9500 2950 9650 2950
$Comp
L power:GND #PWR05
U 1 1 5CE8FCA9
P 9500 3750
AR Path="/5CE8FCA9" Ref="#PWR05"  Part="1" 
AR Path="/5CDE14E0/5CE8FCA9" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 9500 3500 50  0001 C CNN
F 1 "GND" H 9505 3577 50  0000 C CNN
F 2 "" H 9500 3750 50  0001 C CNN
F 3 "" H 9500 3750 50  0001 C CNN
	1    9500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3650 9500 3750
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 5CE8FCB0
P 9500 2650
AR Path="/5CE8FCB0" Ref="RV1"  Part="1" 
AR Path="/5CDE14E0/5CE8FCB0" Ref="RV?"  Part="1" 
F 0 "RV1" H 9432 2696 50  0000 R CNN
F 1 "R_POT_TRIM_US" H 9432 2605 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 9500 2650 50  0001 C CNN
F 3 "~" H 9500 2650 50  0001 C CNN
	1    9500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2800 9500 2950
Connection ~ 9500 2950
Wire Wire Line
	9650 2650 9700 2650
Wire Wire Line
	9700 2650 9700 2400
Wire Wire Line
	9700 2400 9500 2400
Wire Wire Line
	9500 2400 9500 2500
$Comp
L power:+3.3V #PWR04
U 1 1 5CE8FCBC
P 9500 2200
AR Path="/5CE8FCBC" Ref="#PWR04"  Part="1" 
AR Path="/5CDE14E0/5CE8FCBC" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 9500 2050 50  0001 C CNN
F 1 "+3.3V" H 9515 2373 50  0000 C CNN
F 2 "" H 9500 2200 50  0001 C CNN
F 3 "" H 9500 2200 50  0001 C CNN
	1    9500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1750 10300 1750
Wire Wire Line
	9500 2200 9500 2400
Connection ~ 9500 2400
Wire Wire Line
	8050 3450 9000 3450
Wire Wire Line
	8050 3250 8050 3450
Wire Wire Line
	8300 3250 8050 3250
Text GLabel 8100 3050 0    50   Input ~ 0
TEMP_IN_RIGHT
Wire Wire Line
	8100 3050 8300 3050
$Comp
L power:GND #PWR02
U 1 1 5CE969B0
P 6000 7950
F 0 "#PWR02" H 6000 7700 50  0001 C CNN
F 1 "GND" H 6005 7777 50  0000 C CNN
F 2 "" H 6000 7950 50  0001 C CNN
F 3 "" H 6000 7950 50  0001 C CNN
	1    6000 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 7950 6000 7800
$Comp
L Device:R R1
U 1 1 5CE9ACFB
P 5250 7850
F 0 "R1" H 5320 7896 50  0000 L CNN
F 1 "10k" H 5320 7805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5180 7850 50  0001 C CNN
F 3 "~" H 5250 7850 50  0001 C CNN
	1    5250 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7700 5250 7600
Wire Wire Line
	5250 7600 5500 7600
$Comp
L power:GND #PWR01
U 1 1 5CE9F906
P 5250 8150
F 0 "#PWR01" H 5250 7900 50  0001 C CNN
F 1 "GND" H 5255 7977 50  0000 C CNN
F 2 "" H 5250 8150 50  0001 C CNN
F 3 "" H 5250 8150 50  0001 C CNN
	1    5250 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 8150 5250 8000
$Comp
L power:+5V #PWR0119
U 1 1 5CEFF3AE
P 6000 6700
F 0 "#PWR0119" H 6000 6550 50  0001 C CNN
F 1 "+5V" H 6015 6873 50  0000 C CNN
F 2 "" H 6000 6700 50  0001 C CNN
F 3 "" H 6000 6700 50  0001 C CNN
	1    6000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6700 6000 7000
Text GLabel 11150 3050 2    50   Input ~ 0
TEMP_OUT_RIGHT
Wire Wire Line
	10850 3050 11150 3050
Connection ~ 10850 3050
$Comp
L Amplifier_Operational:LM324 U5
U 3 1 5CE53DCA
P 8600 5300
AR Path="/5CE53DCA" Ref="U5"  Part="3" 
AR Path="/5CDE14E0/5CE53DCA" Ref="U?"  Part="1" 
F 0 "U5" H 8600 5667 50  0000 C CNN
F 1 "LM324" H 8600 5576 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8550 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8650 5500 50  0001 C CNN
	3    8600 5300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U5
U 4 1 5CE53DD4
P 10500 5200
AR Path="/5CE53DD4" Ref="U5"  Part="4" 
AR Path="/5CDE14E0/5CE53DD4" Ref="U?"  Part="2" 
F 0 "U5" H 10500 5567 50  0000 C CNN
F 1 "LM324" H 10500 5476 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10450 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 10550 5400 50  0001 C CNN
	4    10500 5200
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 5600 9000 5300
Wire Wire Line
	9000 5300 8900 5300
$Comp
L Device:R R14
U 1 1 5CE53DE0
P 9800 5300
AR Path="/5CE53DE0" Ref="R14"  Part="1" 
AR Path="/5CDE14E0/5CE53DE0" Ref="R?"  Part="1" 
F 0 "R14" H 9870 5346 50  0000 L CNN
F 1 "10k" H 9870 5255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9730 5300 50  0001 C CNN
F 3 "~" H 9800 5300 50  0001 C CNN
	1    9800 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5CE53DEA
P 9500 5650
AR Path="/5CE53DEA" Ref="R11"  Part="1" 
AR Path="/5CDE14E0/5CE53DEA" Ref="R?"  Part="1" 
F 0 "R11" H 9570 5696 50  0000 L CNN
F 1 "100" H 9570 5605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9430 5650 50  0001 C CNN
F 3 "~" H 9500 5650 50  0001 C CNN
	1    9500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5CE53DF4
P 10400 4800
AR Path="/5CE53DF4" Ref="R17"  Part="1" 
AR Path="/5CDE14E0/5CE53DF4" Ref="R?"  Part="1" 
F 0 "R17" H 10470 4846 50  0000 L CNN
F 1 "30k" H 10470 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10330 4800 50  0001 C CNN
F 3 "~" H 10400 4800 50  0001 C CNN
	1    10400 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5CE53DFE
P 10100 5650
AR Path="/5CE53DFE" Ref="R16"  Part="1" 
AR Path="/5CDE14E0/5CE53DFE" Ref="R?"  Part="1" 
F 0 "R16" H 10170 5696 50  0000 L CNN
F 1 "30k" H 10170 5605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10030 5650 50  0001 C CNN
F 3 "~" H 10100 5650 50  0001 C CNN
	1    10100 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5CE53E08
P 9800 5100
AR Path="/5CE53E08" Ref="R13"  Part="1" 
AR Path="/5CDE14E0/5CE53E08" Ref="R?"  Part="1" 
F 0 "R13" H 9870 5146 50  0000 L CNN
F 1 "10k" H 9870 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9730 5100 50  0001 C CNN
F 3 "~" H 9800 5100 50  0001 C CNN
	1    9800 5100
	0    -1   -1   0   
$EndComp
Connection ~ 9000 5300
Wire Wire Line
	9950 5300 10100 5300
Wire Wire Line
	10100 5300 10100 5500
Wire Wire Line
	10100 5300 10200 5300
Connection ~ 10100 5300
$Comp
L power:GND #PWR017
U 1 1 5CE53E17
P 10100 5900
AR Path="/5CE53E17" Ref="#PWR017"  Part="1" 
AR Path="/5CDE14E0/5CE53E17" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 10100 5650 50  0001 C CNN
F 1 "GND" H 10105 5727 50  0000 C CNN
F 2 "" H 10100 5900 50  0001 C CNN
F 3 "" H 10100 5900 50  0001 C CNN
	1    10100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5900 10100 5800
Wire Wire Line
	9000 5300 9650 5300
Wire Wire Line
	10800 5200 10850 5200
Wire Wire Line
	9950 5100 10150 5100
Wire Wire Line
	10150 5100 10150 4800
Wire Wire Line
	10150 4800 10250 4800
Connection ~ 10150 5100
Wire Wire Line
	10150 5100 10200 5100
Wire Wire Line
	10550 4800 10850 4800
Wire Wire Line
	10850 4800 10850 5200
Wire Wire Line
	9500 5500 9500 5100
Wire Wire Line
	9500 5100 9650 5100
$Comp
L power:GND #PWR014
U 1 1 5CE53E2D
P 9500 5900
AR Path="/5CE53E2D" Ref="#PWR014"  Part="1" 
AR Path="/5CDE14E0/5CE53E2D" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 9500 5650 50  0001 C CNN
F 1 "GND" H 9505 5727 50  0000 C CNN
F 2 "" H 9500 5900 50  0001 C CNN
F 3 "" H 9500 5900 50  0001 C CNN
	1    9500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5800 9500 5900
$Comp
L Device:R_POT_TRIM_US RV2
U 1 1 5CE53E38
P 9500 4800
AR Path="/5CE53E38" Ref="RV2"  Part="1" 
AR Path="/5CDE14E0/5CE53E38" Ref="RV?"  Part="1" 
F 0 "RV2" H 9432 4846 50  0000 R CNN
F 1 "R_POT_TRIM_US" H 9432 4755 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 9500 4800 50  0001 C CNN
F 3 "~" H 9500 4800 50  0001 C CNN
	1    9500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4950 9500 5100
Connection ~ 9500 5100
Wire Wire Line
	9650 4800 9700 4800
Wire Wire Line
	9700 4800 9700 4550
Wire Wire Line
	9700 4550 9500 4550
Wire Wire Line
	9500 4550 9500 4650
$Comp
L power:+3.3V #PWR011
U 1 1 5CE53E48
P 9500 4350
AR Path="/5CE53E48" Ref="#PWR011"  Part="1" 
AR Path="/5CDE14E0/5CE53E48" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 9500 4200 50  0001 C CNN
F 1 "+3.3V" H 9515 4523 50  0000 C CNN
F 2 "" H 9500 4350 50  0001 C CNN
F 3 "" H 9500 4350 50  0001 C CNN
	1    9500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4350 9500 4550
Connection ~ 9500 4550
Wire Wire Line
	8050 5600 9000 5600
Wire Wire Line
	8050 5400 8050 5600
Wire Wire Line
	8300 5400 8050 5400
Text GLabel 8100 5200 0    50   Input ~ 0
TEMP_IN_LEFT
Wire Wire Line
	8100 5200 8300 5200
Text GLabel 11150 5200 2    50   Input ~ 0
TEMP_OUT_LEFT
Wire Wire Line
	10850 5200 11150 5200
Connection ~ 10850 5200
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5CE74C27
P 9400 7150
AR Path="/5CE74C27" Ref="Q2"  Part="1" 
AR Path="/5CDE14E0/5CE74C27" Ref="Q?"  Part="1" 
F 0 "Q2" H 9591 7196 50  0000 L CNN
F 1 "BC547" H 9591 7105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9600 7075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9400 7150 50  0001 L CNN
	1    9400 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5CE74C31
P 8850 7150
AR Path="/5CE74C31" Ref="R10"  Part="1" 
AR Path="/5CDE14E0/5CE74C31" Ref="R?"  Part="1" 
F 0 "R10" V 8643 7150 50  0000 C CNN
F 1 "10k" V 8734 7150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8780 7150 50  0001 C CNN
F 3 "~" H 8850 7150 50  0001 C CNN
	1    8850 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5CE74C3B
P 9500 7800
AR Path="/5CE74C3B" Ref="R12"  Part="1" 
AR Path="/5CDE14E0/5CE74C3B" Ref="R?"  Part="1" 
F 0 "R12" H 9570 7846 50  0000 L CNN
F 1 "10k" H 9570 7755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9430 7800 50  0001 C CNN
F 3 "~" H 9500 7800 50  0001 C CNN
	1    9500 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5CE74C45
P 10050 7500
AR Path="/5CE74C45" Ref="R15"  Part="1" 
AR Path="/5CDE14E0/5CE74C45" Ref="R?"  Part="1" 
F 0 "R15" V 9843 7500 50  0000 C CNN
F 1 "10k" V 9934 7500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9980 7500 50  0001 C CNN
F 3 "~" H 10050 7500 50  0001 C CNN
	1    10050 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 7150 9200 7150
Wire Wire Line
	9500 7350 9500 7500
Wire Wire Line
	9500 7500 9900 7500
Connection ~ 9500 7500
Wire Wire Line
	9500 7500 9500 7650
$Comp
L power:GND #PWR016
U 1 1 5CE74C54
P 9500 8050
AR Path="/5CE74C54" Ref="#PWR016"  Part="1" 
AR Path="/5CDE14E0/5CE74C54" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 9500 7800 50  0001 C CNN
F 1 "GND" H 9505 7877 50  0000 C CNN
F 2 "" H 9500 8050 50  0001 C CNN
F 3 "" H 9500 8050 50  0001 C CNN
	1    9500 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8050 9500 7950
$Comp
L Diode:BAT54S D2
U 1 1 5CE74C5F
P 10550 7100
AR Path="/5CE74C5F" Ref="D2"  Part="1" 
AR Path="/5CDE14E0/5CE74C5F" Ref="D?"  Part="1" 
F 0 "D2" H 10550 7325 50  0000 C CNN
F 1 "BAT54S" H 10550 7234 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10625 7225 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 10430 7100 50  0001 C CNN
	1    10550 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 7500 10550 7500
Wire Wire Line
	10550 7500 10550 7300
$Comp
L power:GND #PWR018
U 1 1 5CE74C6B
P 10200 7150
AR Path="/5CE74C6B" Ref="#PWR018"  Part="1" 
AR Path="/5CDE14E0/5CE74C6B" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 10200 6900 50  0001 C CNN
F 1 "GND" H 10205 6977 50  0000 C CNN
F 2 "" H 10200 7150 50  0001 C CNN
F 3 "" H 10200 7150 50  0001 C CNN
	1    10200 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5CE74C75
P 10900 7000
AR Path="/5CE74C75" Ref="#PWR019"  Part="1" 
AR Path="/5CDE14E0/5CE74C75" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 10900 6850 50  0001 C CNN
F 1 "+3.3V" H 10915 7173 50  0000 C CNN
F 2 "" H 10900 7000 50  0001 C CNN
F 3 "" H 10900 7000 50  0001 C CNN
	1    10900 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 7150 10200 7100
Wire Wire Line
	10200 7100 10250 7100
Wire Wire Line
	10850 7100 10900 7100
Wire Wire Line
	10900 7100 10900 7000
Text GLabel 10700 7500 2    50   Input ~ 0
RPM_OUT_RIGHT
Text GLabel 8400 7150 0    50   Input ~ 0
RPM_IN_RIGHT
Wire Wire Line
	8400 7150 8700 7150
Wire Wire Line
	10550 7500 10700 7500
Connection ~ 10550 7500
Wire Wire Line
	9500 6800 9500 6950
$Comp
L power:+3.3V #PWR015
U 1 1 5CE74C89
P 9500 6800
AR Path="/5CE74C89" Ref="#PWR015"  Part="1" 
AR Path="/5CDE14E0/5CE74C89" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 9500 6650 50  0001 C CNN
F 1 "+3.3V" H 9515 6973 50  0000 C CNN
F 2 "" H 9500 6800 50  0001 C CNN
F 3 "" H 9500 6800 50  0001 C CNN
	1    9500 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5CE8FC2A
P 9500 8800
AR Path="/5CE8FC2A" Ref="#PWR07"  Part="1" 
AR Path="/5CDE14E0/5CE8FC2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 9500 8650 50  0001 C CNN
F 1 "+3.3V" H 9515 8973 50  0000 C CNN
F 2 "" H 9500 8800 50  0001 C CNN
F 3 "" H 9500 8800 50  0001 C CNN
	1    9500 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8800 9500 8950
Connection ~ 10550 9500
Wire Wire Line
	10550 9500 10700 9500
Wire Wire Line
	8400 9150 8700 9150
Text GLabel 8400 9150 0    50   Input ~ 0
RPM_IN_LEFT
Text GLabel 10700 9500 2    50   Input ~ 0
RPM_OUT_LEFT
Wire Wire Line
	10200 9100 10250 9100
Wire Wire Line
	10200 9150 10200 9100
$Comp
L power:GND #PWR010
U 1 1 5CE8FC14
P 10200 9150
AR Path="/5CE8FC14" Ref="#PWR010"  Part="1" 
AR Path="/5CDE14E0/5CE8FC14" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 10200 8900 50  0001 C CNN
F 1 "GND" H 10205 8977 50  0000 C CNN
F 2 "" H 10200 9150 50  0001 C CNN
F 3 "" H 10200 9150 50  0001 C CNN
	1    10200 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 9500 10550 9300
Wire Wire Line
	10200 9500 10550 9500
$Comp
L Diode:BAT54S D1
U 1 1 5CE8FC0C
P 10550 9100
AR Path="/5CE8FC0C" Ref="D1"  Part="1" 
AR Path="/5CDE14E0/5CE8FC0C" Ref="D?"  Part="1" 
F 0 "D1" H 10550 9325 50  0000 C CNN
F 1 "BAT54S" H 10550 9234 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10625 9225 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 10430 9100 50  0001 C CNN
	1    10550 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 10050 9500 9950
$Comp
L power:GND #PWR08
U 1 1 5CE8FC05
P 9500 10050
AR Path="/5CE8FC05" Ref="#PWR08"  Part="1" 
AR Path="/5CDE14E0/5CE8FC05" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 9500 9800 50  0001 C CNN
F 1 "GND" H 9505 9877 50  0000 C CNN
F 2 "" H 9500 10050 50  0001 C CNN
F 3 "" H 9500 10050 50  0001 C CNN
	1    9500 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 9500 9500 9650
Connection ~ 9500 9500
Wire Wire Line
	9500 9500 9900 9500
Wire Wire Line
	9500 9350 9500 9500
Wire Wire Line
	9000 9150 9200 9150
$Comp
L Device:R R9
U 1 1 5CE8FBFA
P 10050 9500
AR Path="/5CE8FBFA" Ref="R9"  Part="1" 
AR Path="/5CDE14E0/5CE8FBFA" Ref="R?"  Part="1" 
F 0 "R9" V 9843 9500 50  0000 C CNN
F 1 "10k" V 9934 9500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9980 9500 50  0001 C CNN
F 3 "~" H 10050 9500 50  0001 C CNN
	1    10050 9500
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CE8FBF4
P 9500 9800
AR Path="/5CE8FBF4" Ref="R7"  Part="1" 
AR Path="/5CDE14E0/5CE8FBF4" Ref="R?"  Part="1" 
F 0 "R7" H 9570 9846 50  0000 L CNN
F 1 "10k" H 9570 9755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9430 9800 50  0001 C CNN
F 3 "~" H 9500 9800 50  0001 C CNN
	1    9500 9800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CE8FBEE
P 8850 9150
AR Path="/5CE8FBEE" Ref="R3"  Part="1" 
AR Path="/5CDE14E0/5CE8FBEE" Ref="R?"  Part="1" 
F 0 "R3" V 8643 9150 50  0000 C CNN
F 1 "10k" V 8734 9150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8780 9150 50  0001 C CNN
F 3 "~" H 8850 9150 50  0001 C CNN
	1    8850 9150
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5CE8FBE8
P 9400 9150
AR Path="/5CE8FBE8" Ref="Q1"  Part="1" 
AR Path="/5CDE14E0/5CE8FBE8" Ref="Q?"  Part="1" 
F 0 "Q1" H 9591 9196 50  0000 L CNN
F 1 "BC547" H 9591 9105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9600 9075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9400 9150 50  0001 L CNN
	1    9400 9150
	1    0    0    -1  
$EndComp
$Comp
L BluePillShield:Screw_Terminal_01x02 J1
U 1 1 5CE94079
P 2950 7050
F 0 "J1" H 2868 6725 50  0000 C CNN
F 1 "BUS_PWR" H 2868 6816 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 2950 7050 50  0001 C CNN
F 3 "~" H 2950 7050 50  0001 C CNN
	1    2950 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 6950 3600 6950
Wire Wire Line
	3600 7050 3150 7050
Wire Wire Line
	3150 7400 3600 7400
Wire Wire Line
	3150 7500 3600 7500
$Comp
L BluePillShield:Screw_Terminal_01x02 J7
U 1 1 5CE94D08
P 2950 7500
F 0 "J7" H 2868 7175 50  0000 C CNN
F 1 "BUS_CAN" H 2868 7266 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 2950 7500 50  0001 C CNN
F 3 "~" H 2950 7500 50  0001 C CNN
	1    2950 7500
	-1   0    0    1   
$EndComp
Text GLabel 4950 4750 0    50   Input ~ 0
TEMP_OUT_RIGHT
Text GLabel 4900 4550 0    50   Input ~ 0
RPM_OUT_LEFT
Text GLabel 4900 4450 0    50   Input ~ 0
RPM_OUT_RIGHT
Wire Wire Line
	4900 4450 5200 4450
Wire Wire Line
	4900 4550 5200 4550
Wire Wire Line
	4950 4650 5200 4650
Wire Wire Line
	4950 4750 5200 4750
Wire Wire Line
	3050 5350 3300 5350
Wire Wire Line
	3050 5150 3400 5150
Wire Wire Line
	3050 4400 3250 4400
Wire Wire Line
	3250 4500 3050 4500
Wire Wire Line
	3250 5900 3050 5900
Wire Wire Line
	3050 5800 3250 5800
$EndSCHEMATC
