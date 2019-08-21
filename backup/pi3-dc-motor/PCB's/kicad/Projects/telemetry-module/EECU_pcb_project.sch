EESchema Schematic File Version 4
LIBS:EECU_pcb_project-cache
EELAYER 26 0
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
Text GLabel 3700 7350 2    50   Input ~ 0
CAN_H
Text GLabel 3700 7250 2    50   Input ~ 0
CAN_L
$Comp
L power:GND #PWR0105
U 1 1 5CDF54EE
P 3700 6900
F 0 "#PWR0105" H 3700 6650 50  0001 C CNN
F 1 "GND" V 3705 6772 50  0000 R CNN
F 2 "" H 3700 6900 50  0001 C CNN
F 3 "" H 3700 6900 50  0001 C CNN
	1    3700 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5CDF6ADC
P 3700 6800
F 0 "#PWR0106" H 3700 6650 50  0001 C CNN
F 1 "+12V" V 3715 6928 50  0000 L CNN
F 2 "" H 3700 6800 50  0001 C CNN
F 3 "" H 3700 6800 50  0001 C CNN
	1    3700 6800
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 5CE14620
P 10050 5950
F 0 "U3" H 10050 6192 50  0000 C CNN
F 1 "AMS1117-3.3" H 10050 6101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 10050 6150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 10150 5700 50  0001 C CNN
	1    10050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5CE176D3
P 9550 6250
F 0 "C1" H 9668 6296 50  0000 L CNN
F 1 "10uF" H 9668 6205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 9588 6100 50  0001 C CNN
F 3 "~" H 9550 6250 50  0001 C CNN
	1    9550 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5CE17CE3
P 10550 6250
F 0 "C2" H 10668 6296 50  0000 L CNN
F 1 "22uF" H 10668 6205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 10588 6100 50  0001 C CNN
F 3 "~" H 10550 6250 50  0001 C CNN
	1    10550 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CE186A0
P 10050 6600
F 0 "#PWR0107" H 10050 6350 50  0001 C CNN
F 1 "GND" H 10055 6427 50  0000 C CNN
F 2 "" H 10050 6600 50  0001 C CNN
F 3 "" H 10050 6600 50  0001 C CNN
	1    10050 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CE18DC2
P 9550 6600
F 0 "#PWR0108" H 9550 6350 50  0001 C CNN
F 1 "GND" H 9555 6427 50  0000 C CNN
F 2 "" H 9550 6600 50  0001 C CNN
F 3 "" H 9550 6600 50  0001 C CNN
	1    9550 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CE1972B
P 10550 6600
F 0 "#PWR0109" H 10550 6350 50  0001 C CNN
F 1 "GND" H 10555 6427 50  0000 C CNN
F 2 "" H 10550 6600 50  0001 C CNN
F 3 "" H 10550 6600 50  0001 C CNN
	1    10550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6250 10050 6600
Wire Wire Line
	9550 6400 9550 6600
Wire Wire Line
	9550 6100 9550 5950
Wire Wire Line
	9550 5950 9750 5950
Wire Wire Line
	10550 6400 10550 6600
Wire Wire Line
	10350 5950 10550 5950
Wire Wire Line
	10550 5950 10550 6100
$Comp
L power:+5V #PWR0110
U 1 1 5CE2296A
P 9250 5900
F 0 "#PWR0110" H 9250 5750 50  0001 C CNN
F 1 "+5V" H 9265 6073 50  0000 C CNN
F 2 "" H 9250 5900 50  0001 C CNN
F 3 "" H 9250 5900 50  0001 C CNN
	1    9250 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5CE22F9E
P 10750 5900
F 0 "#PWR0111" H 10750 5750 50  0001 C CNN
F 1 "+3.3V" H 10765 6073 50  0000 C CNN
F 2 "" H 10750 5900 50  0001 C CNN
F 3 "" H 10750 5900 50  0001 C CNN
	1    10750 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5900 9250 5950
Wire Wire Line
	9250 5950 9550 5950
Connection ~ 9550 5950
Wire Wire Line
	10550 5950 10750 5950
Wire Wire Line
	10750 5950 10750 5900
Connection ~ 10550 5950
$Comp
L EECU_Library:Switching_Regulator U2
U 1 1 5CE37126
P 10000 8000
F 0 "U2" H 10225 8465 50  0000 C CNN
F 1 "Switching_Regulator" H 10225 8374 50  0000 C CNN
F 2 "Switching_regulator_foot:switching_regulator" H 10000 8350 50  0001 C CNN
F 3 "" H 10000 8350 50  0001 C CNN
	1    10000 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5CE37E15
P 10650 8000
F 0 "#PWR0113" H 10650 7750 50  0001 C CNN
F 1 "GND" H 10655 7827 50  0000 C CNN
F 2 "" H 10650 8000 50  0001 C CNN
F 3 "" H 10650 8000 50  0001 C CNN
	1    10650 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5CE388F7
P 9750 8000
F 0 "#PWR0114" H 9750 7750 50  0001 C CNN
F 1 "GND" H 9755 7827 50  0000 C CNN
F 2 "" H 9750 8000 50  0001 C CNN
F 3 "" H 9750 8000 50  0001 C CNN
	1    9750 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 8000 9750 7900
Wire Wire Line
	9750 7900 9900 7900
Wire Wire Line
	10650 8000 10650 7900
Wire Wire Line
	10650 7900 10550 7900
$Comp
L power:+12V #PWR0115
U 1 1 5CE3DAD3
P 9750 7700
F 0 "#PWR0115" H 9750 7550 50  0001 C CNN
F 1 "+12V" H 9765 7873 50  0000 C CNN
F 2 "" H 9750 7700 50  0001 C CNN
F 3 "" H 9750 7700 50  0001 C CNN
	1    9750 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 7700 9750 7800
Wire Wire Line
	9750 7800 9900 7800
$Comp
L power:+5V #PWR0116
U 1 1 5CE40E9E
P 10650 7700
F 0 "#PWR0116" H 10650 7550 50  0001 C CNN
F 1 "+5V" H 10665 7873 50  0000 C CNN
F 2 "" H 10650 7700 50  0001 C CNN
F 3 "" H 10650 7700 50  0001 C CNN
	1    10650 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 7800 10650 7700
Wire Wire Line
	10550 7800 10650 7800
$Comp
L EECU_pcb_project-rescue:BluePill_STM32F103C-bluepill_breakouts U1
U 1 1 5CE394F4
P 7000 4500
F 0 "U1" H 7025 5465 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 7025 5374 50  0000 C CNN
F 2 "BluePill_Shield:BluePill_STM32F103C" H 7050 2900 50  0001 C CNN
F 3 "" H 7000 3000 50  0001 C CNN
	1    7000 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5CE3B58F
P 8150 3900
F 0 "#PWR0117" H 8150 3650 50  0001 C CNN
F 1 "GND" H 8155 3727 50  0000 C CNN
F 2 "" H 8150 3900 50  0001 C CNN
F 3 "" H 8150 3900 50  0001 C CNN
	1    8150 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5CE3D60D
P 8150 3700
F 0 "#PWR0118" H 8150 3550 50  0001 C CNN
F 1 "+3.3V" H 8165 3873 50  0000 C CNN
F 2 "" H 8150 3700 50  0001 C CNN
F 3 "" H 8150 3700 50  0001 C CNN
	1    8150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3700 8150 3800
Wire Wire Line
	8150 3800 7900 3800
Text GLabel 8350 4200 2    50   Input ~ 0
CAN_RX
Wire Wire Line
	8350 4200 7900 4200
Wire Wire Line
	8150 3900 7900 3900
Text GLabel 8350 4100 2    50   Input ~ 0
CAN_TX
Wire Wire Line
	7900 4100 8350 4100
$Comp
L power:GND #PWR03
U 1 1 5CE6AC1D
P 6000 6000
F 0 "#PWR03" H 6000 5750 50  0001 C CNN
F 1 "GND" H 6005 5827 50  0000 C CNN
F 2 "" H 6000 6000 50  0001 C CNN
F 3 "" H 6000 6000 50  0001 C CNN
	1    6000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6000 6000 5700
Wire Wire Line
	6000 5600 6000 5700
Wire Wire Line
	6000 5700 6150 5700
Wire Wire Line
	6000 5600 6150 5600
Connection ~ 6000 5700
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U4
U 1 1 5CE7198B
P 6950 7900
F 0 "U4" H 6950 8481 50  0000 C CNN
F 1 "MCP2551-I-SN" H 6950 8390 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6950 7400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 6950 7900 50  0001 C CNN
	1    6950 7900
	1    0    0    -1  
$EndComp
Text GLabel 7650 7800 2    50   Input ~ 0
CAN_H
Text GLabel 7650 8000 2    50   Input ~ 0
CAN_L
Text GLabel 6150 7800 0    50   Input ~ 0
CAN_RX
Text GLabel 6150 7700 0    50   Input ~ 0
CAN_TX
Wire Wire Line
	6150 7700 6450 7700
Wire Wire Line
	6150 7800 6450 7800
Wire Wire Line
	7450 7800 7650 7800
Wire Wire Line
	7450 8000 7650 8000
$Comp
L power:GND #PWR02
U 1 1 5CE969B0
P 6950 8450
F 0 "#PWR02" H 6950 8200 50  0001 C CNN
F 1 "GND" H 6955 8277 50  0000 C CNN
F 2 "" H 6950 8450 50  0001 C CNN
F 3 "" H 6950 8450 50  0001 C CNN
	1    6950 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 8450 6950 8300
$Comp
L Device:R R1
U 1 1 5CE9ACFB
P 6200 8350
F 0 "R1" H 6270 8396 50  0000 L CNN
F 1 "10k" H 6270 8305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6130 8350 50  0001 C CNN
F 3 "~" H 6200 8350 50  0001 C CNN
	1    6200 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 8200 6200 8100
Wire Wire Line
	6200 8100 6450 8100
$Comp
L power:GND #PWR01
U 1 1 5CE9F906
P 6200 8650
F 0 "#PWR01" H 6200 8400 50  0001 C CNN
F 1 "GND" H 6205 8477 50  0000 C CNN
F 2 "" H 6200 8650 50  0001 C CNN
F 3 "" H 6200 8650 50  0001 C CNN
	1    6200 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 8650 6200 8500
$Comp
L power:+5V #PWR0119
U 1 1 5CEFF3AE
P 6950 7200
F 0 "#PWR0119" H 6950 7050 50  0001 C CNN
F 1 "+5V" H 6965 7373 50  0000 C CNN
F 2 "" H 6950 7200 50  0001 C CNN
F 3 "" H 6950 7200 50  0001 C CNN
	1    6950 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 7200 6950 7500
$Comp
L EECU_pcb_project-rescue:Screw_Terminal_01x02-BluePillShield J1
U 1 1 5CE94079
P 3050 6900
F 0 "J1" H 2968 6575 50  0000 C CNN
F 1 "BUS_PWR" H 2968 6666 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3050 6900 50  0001 C CNN
F 3 "~" H 3050 6900 50  0001 C CNN
	1    3050 6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 6800 3300 6800
Wire Wire Line
	3700 6900 3350 6900
$Comp
L EECU_pcb_project-rescue:Screw_Terminal_01x02-BluePillShield J7
U 1 1 5CE94D08
P 3050 7350
F 0 "J7" H 2968 7025 50  0000 C CNN
F 1 "BUS_CAN" H 2968 7116 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3050 7350 50  0001 C CNN
F 3 "~" H 3050 7350 50  0001 C CNN
	1    3050 7350
	-1   0    0    1   
$EndComp
Text GLabel 3700 8350 2    50   Input ~ 0
CAN_H
Text GLabel 3700 8250 2    50   Input ~ 0
CAN_L
$Comp
L power:GND #PWR05
U 1 1 5CF15CAE
P 3700 7900
F 0 "#PWR05" H 3700 7650 50  0001 C CNN
F 1 "GND" V 3705 7772 50  0000 R CNN
F 2 "" H 3700 7900 50  0001 C CNN
F 3 "" H 3700 7900 50  0001 C CNN
	1    3700 7900
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR04
U 1 1 5CF15CB4
P 3700 7800
F 0 "#PWR04" H 3700 7650 50  0001 C CNN
F 1 "+12V" V 3715 7928 50  0000 L CNN
F 2 "" H 3700 7800 50  0001 C CNN
F 3 "" H 3700 7800 50  0001 C CNN
	1    3700 7800
	0    1    1    0   
$EndComp
$Comp
L EECU_pcb_project-rescue:Screw_Terminal_01x02-BluePillShield J2
U 1 1 5CF15CBA
P 3050 7900
F 0 "J2" H 2968 7575 50  0000 C CNN
F 1 "BUS_PWR" H 2968 7666 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3050 7900 50  0001 C CNN
F 3 "~" H 3050 7900 50  0001 C CNN
	1    3050 7900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 7800 3300 7800
Wire Wire Line
	3700 7900 3350 7900
$Comp
L EECU_pcb_project-rescue:Screw_Terminal_01x02-BluePillShield J3
U 1 1 5CF15CC5
P 3050 8350
F 0 "J3" H 2968 8025 50  0000 C CNN
F 1 "BUS_CAN" H 2968 8116 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3050 8350 50  0001 C CNN
F 3 "~" H 3050 8350 50  0001 C CNN
	1    3050 8350
	-1   0    0    1   
$EndComp
Text GLabel 7900 5100 2    50   Input ~ 0
USART1_RX
Text GLabel 7900 5200 2    50   Input ~ 0
USART1_TX
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5CF3171D
P 3350 6150
F 0 "J4" H 3377 6126 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3377 6035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3350 6150 50  0001 C CNN
F 3 "~" H 3350 6150 50  0001 C CNN
	1    3350 6150
	-1   0    0    1   
$EndComp
Text GLabel 3550 6150 2    50   Input ~ 0
USART1_RX
Text GLabel 3550 6050 2    50   Input ~ 0
USART1_TX
$Comp
L power:+5V #PWR06
U 1 1 5CF366E4
P 3750 5950
F 0 "#PWR06" H 3750 5800 50  0001 C CNN
F 1 "+5V" H 3765 6123 50  0000 C CNN
F 2 "" H 3750 5950 50  0001 C CNN
F 3 "" H 3750 5950 50  0001 C CNN
	1    3750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5950 3750 5950
$Comp
L power:GND #PWR07
U 1 1 5CF37447
P 3750 6250
F 0 "#PWR07" H 3750 6000 50  0001 C CNN
F 1 "GND" H 3755 6077 50  0000 C CNN
F 2 "" H 3750 6250 50  0001 C CNN
F 3 "" H 3750 6250 50  0001 C CNN
	1    3750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6250 3550 6250
Wire Wire Line
	3250 7350 3450 7350
Wire Wire Line
	3250 8350 3450 8350
Wire Wire Line
	3250 7250 3400 7250
Wire Wire Line
	3250 8250 3400 8250
Wire Wire Line
	3300 6800 3300 7800
Connection ~ 3300 6800
Wire Wire Line
	3300 6800 3700 6800
Connection ~ 3300 7800
Wire Wire Line
	3300 7800 3700 7800
Wire Wire Line
	3350 6900 3350 7900
Connection ~ 3350 6900
Wire Wire Line
	3350 6900 3250 6900
Connection ~ 3350 7900
Wire Wire Line
	3350 7900 3250 7900
Wire Wire Line
	3400 7250 3400 8250
Connection ~ 3400 7250
Wire Wire Line
	3400 7250 3700 7250
Connection ~ 3400 8250
Wire Wire Line
	3400 8250 3700 8250
Wire Wire Line
	3450 7350 3450 8350
Connection ~ 3450 7350
Wire Wire Line
	3450 7350 3700 7350
Connection ~ 3450 8350
Wire Wire Line
	3450 8350 3700 8350
$EndSCHEMATC