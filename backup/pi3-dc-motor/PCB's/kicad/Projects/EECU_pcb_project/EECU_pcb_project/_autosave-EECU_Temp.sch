EESchema Schematic File Version 4
LIBS:EECU_pcb_project-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "EECU Temperature analog circuit"
Date ""
Rev "v01"
Comp "Red Tails"
Comment1 "Author: Rafael Hiller"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5CE29AF9
P 5700 4800
F 0 "Q?" H 5891 4846 50  0000 L CNN
F 1 "BC547" H 5891 4755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5900 4725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5700 4800 50  0001 L CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE29B06
P 5150 4800
AR Path="/5CE29B06" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE29B06" Ref="R8"  Part="1" 
F 0 "R8" V 4943 4800 50  0000 C CNN
F 1 "10k" V 5034 4800 50  0000 C CNN
F 2 "" V 5080 4800 50  0001 C CNN
F 3 "~" H 5150 4800 50  0001 C CNN
	1    5150 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CE29B0C
P 5800 5450
AR Path="/5CE29B0C" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE29B0C" Ref="R9"  Part="1" 
F 0 "R9" H 5870 5496 50  0000 L CNN
F 1 "10k" H 5870 5405 50  0000 L CNN
F 2 "" V 5730 5450 50  0001 C CNN
F 3 "~" H 5800 5450 50  0001 C CNN
	1    5800 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE29B12
P 6350 5150
AR Path="/5CE29B12" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE29B12" Ref="R10"  Part="1" 
F 0 "R10" V 6143 5150 50  0000 C CNN
F 1 "10k" V 6234 5150 50  0000 C CNN
F 2 "" V 6280 5150 50  0001 C CNN
F 3 "~" H 6350 5150 50  0001 C CNN
	1    6350 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 4800 5500 4800
Wire Wire Line
	5800 5000 5800 5150
Wire Wire Line
	5800 5150 6200 5150
Connection ~ 5800 5150
Wire Wire Line
	5800 5150 5800 5300
$Comp
L power:GND #PWR?
U 1 1 5CE29B1D
P 5800 5700
F 0 "#PWR?" H 5800 5450 50  0001 C CNN
F 1 "GND" H 5805 5527 50  0000 C CNN
F 2 "" H 5800 5700 50  0001 C CNN
F 3 "" H 5800 5700 50  0001 C CNN
	1    5800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5700 5800 5600
$Comp
L Diode:BAT54S D?
U 1 1 5CE29B24
P 6850 4750
F 0 "D?" H 6850 4975 50  0000 C CNN
F 1 "BAT54S" H 6850 4884 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6925 4875 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6730 4750 50  0001 C CNN
	1    6850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5150 6850 5150
Wire Wire Line
	6850 5150 6850 4950
$Comp
L power:GND #PWR?
U 1 1 5CE29B2C
P 6500 4800
F 0 "#PWR?" H 6500 4550 50  0001 C CNN
F 1 "GND" H 6505 4627 50  0000 C CNN
F 2 "" H 6500 4800 50  0001 C CNN
F 3 "" H 6500 4800 50  0001 C CNN
	1    6500 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CE29B32
P 7200 4650
F 0 "#PWR?" H 7200 4500 50  0001 C CNN
F 1 "+3.3V" H 7215 4823 50  0000 C CNN
F 2 "" H 7200 4650 50  0001 C CNN
F 3 "" H 7200 4650 50  0001 C CNN
	1    7200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4800 6500 4750
Wire Wire Line
	6500 4750 6550 4750
Wire Wire Line
	7150 4750 7200 4750
Wire Wire Line
	7200 4750 7200 4650
Text GLabel 7000 5150 2    50   Input ~ 0
RPM_OUT
Text GLabel 4700 4800 0    50   Input ~ 0
RPM_IN
Wire Wire Line
	4700 4800 5000 4800
Wire Wire Line
	6850 5150 7000 5150
Connection ~ 6850 5150
Wire Wire Line
	5800 4450 5800 4600
$Comp
L power:+3.3V #PWR?
U 1 1 5CE29AFF
P 5800 4450
F 0 "#PWR?" H 5800 4300 50  0001 C CNN
F 1 "+3.3V" H 5815 4623 50  0000 C CNN
F 2 "" H 5800 4450 50  0001 C CNN
F 3 "" H 5800 4450 50  0001 C CNN
	1    5800 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CE1B69F
P 5950 1900
AR Path="/5CE1B69F" Ref="#PWR?"  Part="1" 
AR Path="/5CDE14E0/5CE1B69F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 1750 50  0001 C CNN
F 1 "+5V" V 5965 2028 50  0000 L CNN
F 2 "" H 5950 1900 50  0001 C CNN
F 3 "" H 5950 1900 50  0001 C CNN
	1    5950 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1900 6100 1900
$Comp
L Amplifier_Operational:LM324 U?
U 1 1 5CE1B698
P 4050 2900
AR Path="/5CE1B698" Ref="U?"  Part="1" 
AR Path="/5CDE14E0/5CE1B698" Ref="U?"  Part="1" 
F 0 "U?" H 4050 3267 50  0000 C CNN
F 1 "LM324" H 4050 3176 50  0000 C CNN
F 2 "" H 4000 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4100 3100 50  0001 C CNN
	1    4050 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 2 1 5CE1B692
P 5950 2800
AR Path="/5CE1B692" Ref="U?"  Part="2" 
AR Path="/5CDE14E0/5CE1B692" Ref="U?"  Part="2" 
F 0 "U?" H 5950 3167 50  0000 C CNN
F 1 "LM324" H 5950 3076 50  0000 C CNN
F 2 "" H 5900 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6000 3000 50  0001 C CNN
	2    5950 2800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 4 1 5CE1B68C
P 7150 2900
AR Path="/5CE1B68C" Ref="U?"  Part="4" 
AR Path="/5CDE14E0/5CE1B68C" Ref="U?"  Part="4" 
F 0 "U?" H 7150 3267 50  0000 C CNN
F 1 "LM324" H 7150 3176 50  0000 C CNN
F 2 "" H 7100 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7200 3100 50  0001 C CNN
	4    7150 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U?
U 5 1 5CE1B686
P 6400 1800
AR Path="/5CE1B686" Ref="U?"  Part="5" 
AR Path="/5CDE14E0/5CE1B686" Ref="U?"  Part="5" 
F 0 "U?" H 6358 1846 50  0000 L CNN
F 1 "LM324" H 6358 1755 50  0000 L CNN
F 2 "" H 6350 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6450 2000 50  0001 C CNN
	5    6400 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CE1B680
P 6800 1900
AR Path="/5CE1B680" Ref="#PWR?"  Part="1" 
AR Path="/5CDE14E0/5CE1B680" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6800 1650 50  0001 C CNN
F 1 "GND" H 6805 1727 50  0000 C CNN
F 2 "" H 6800 1900 50  0001 C CNN
F 3 "" H 6800 1900 50  0001 C CNN
	1    6800 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3200 4450 2900
Wire Wire Line
	4450 2900 4350 2900
$Comp
L Device:R R?
U 1 1 5CE1B678
P 5250 2900
AR Path="/5CE1B678" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B678" Ref="R2"  Part="1" 
F 0 "R2" H 5320 2946 50  0000 L CNN
F 1 "10k" H 5320 2855 50  0000 L CNN
F 2 "" V 5180 2900 50  0001 C CNN
F 3 "~" H 5250 2900 50  0001 C CNN
	1    5250 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CE1B672
P 4950 3250
AR Path="/5CE1B672" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B672" Ref="R4"  Part="1" 
F 0 "R4" H 5020 3296 50  0000 L CNN
F 1 "100" H 5020 3205 50  0000 L CNN
F 2 "" V 4880 3250 50  0001 C CNN
F 3 "~" H 4950 3250 50  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE1B66C
P 5850 2400
AR Path="/5CE1B66C" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B66C" Ref="R5"  Part="1" 
F 0 "R5" H 5920 2446 50  0000 L CNN
F 1 "10k" H 5920 2355 50  0000 L CNN
F 2 "" V 5780 2400 50  0001 C CNN
F 3 "~" H 5850 2400 50  0001 C CNN
	1    5850 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CE1B666
P 5550 3250
AR Path="/5CE1B666" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B666" Ref="R3"  Part="1" 
F 0 "R3" H 5620 3296 50  0000 L CNN
F 1 "10k" H 5620 3205 50  0000 L CNN
F 2 "" V 5480 3250 50  0001 C CNN
F 3 "~" H 5550 3250 50  0001 C CNN
	1    5550 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5CE1B660
P 5250 2700
AR Path="/5CE1B660" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B660" Ref="R1"  Part="1" 
F 0 "R1" H 5320 2746 50  0000 L CNN
F 1 "10k" H 5320 2655 50  0000 L CNN
F 2 "" V 5180 2700 50  0001 C CNN
F 3 "~" H 5250 2700 50  0001 C CNN
	1    5250 2700
	0    -1   -1   0   
$EndComp
Connection ~ 4450 2900
Wire Wire Line
	5400 2900 5550 2900
Wire Wire Line
	5550 2900 5550 3100
Wire Wire Line
	5550 2900 5650 2900
Connection ~ 5550 2900
$Comp
L power:GND #PWR?
U 1 1 5CE1B655
P 5550 3500
AR Path="/5CE1B655" Ref="#PWR?"  Part="1" 
AR Path="/5CDE14E0/5CE1B655" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 3250 50  0001 C CNN
F 1 "GND" H 5555 3327 50  0000 C CNN
F 2 "" H 5550 3500 50  0001 C CNN
F 3 "" H 5550 3500 50  0001 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3500 5550 3400
Wire Wire Line
	4450 2900 5100 2900
Wire Wire Line
	6250 2800 6300 2800
$Comp
L Device:R R?
U 1 1 5CE1B64C
P 6700 3500
AR Path="/5CE1B64C" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B64C" Ref="R6"  Part="1" 
F 0 "R6" H 6770 3546 50  0000 L CNN
F 1 "1k" H 6770 3455 50  0000 L CNN
F 2 "" V 6630 3500 50  0001 C CNN
F 3 "~" H 6700 3500 50  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CE1B646
P 7150 3300
AR Path="/5CE1B646" Ref="R?"  Part="1" 
AR Path="/5CDE14E0/5CE1B646" Ref="R7"  Part="1" 
F 0 "R7" V 6943 3300 50  0000 C CNN
F 1 "2k" V 7034 3300 50  0000 C CNN
F 2 "" V 7080 3300 50  0001 C CNN
F 3 "~" H 7150 3300 50  0001 C CNN
	1    7150 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3350 6700 3300
Wire Wire Line
	6700 3000 6850 3000
Wire Wire Line
	7300 3300 7550 3300
Wire Wire Line
	7550 3300 7550 2900
Wire Wire Line
	7550 2900 7450 2900
Wire Wire Line
	7000 3300 6700 3300
Connection ~ 6700 3300
Wire Wire Line
	6700 3300 6700 3000
$Comp
L power:GND #PWR?
U 1 1 5CE1B638
P 6700 3750
AR Path="/5CE1B638" Ref="#PWR?"  Part="1" 
AR Path="/5CDE14E0/5CE1B638" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 3500 50  0001 C CNN
F 1 "GND" H 6705 3577 50  0000 C CNN
F 2 "" H 6700 3750 50  0001 C CNN
F 3 "" H 6700 3750 50  0001 C CNN
	1    6700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3750 6700 3650
Wire Wire Line
	5400 2700 5600 2700
Wire Wire Line
	5600 2700 5600 2400
Wire Wire Line
	5600 2400 5700 2400
Connection ~ 5600 2700
Wire Wire Line
	5600 2700 5650 2700
Wire Wire Line
	6000 2400 6300 2400
Wire Wire Line
	6300 2400 6300 2800
Connection ~ 6300 2800
Wire Wire Line
	6300 2800 6850 2800
Wire Wire Line
	4950 3100 4950 2700
Wire Wire Line
	4950 2700 5100 2700
$Comp
L power:GND #PWR?
U 1 1 5CE1B626
P 4950 3500
AR Path="/5CE1B626" Ref="#PWR?"  Part="1" 
AR Path="/5CDE14E0/5CE1B626" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 3250 50  0001 C CNN
F 1 "GND" H 4955 3327 50  0000 C CNN
F 2 "" H 4950 3500 50  0001 C CNN
F 3 "" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3400 4950 3500
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5CE1B61F
P 4950 2400
AR Path="/5CE1B61F" Ref="RV?"  Part="1" 
AR Path="/5CDE14E0/5CE1B61F" Ref="RV?"  Part="1" 
F 0 "RV?" H 4882 2446 50  0000 R CNN
F 1 "R_POT_TRIM_US" H 4882 2355 50  0000 R CNN
F 2 "" H 4950 2400 50  0001 C CNN
F 3 "~" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2550 4950 2700
Connection ~ 4950 2700
Wire Wire Line
	5100 2400 5150 2400
Wire Wire Line
	5150 2400 5150 2150
Wire Wire Line
	5150 2150 4950 2150
Wire Wire Line
	4950 2150 4950 2250
$Comp
L power:+3.3V #PWR?
U 1 1 5CE1B613
P 4950 1950
AR Path="/5CE1B613" Ref="#PWR?"  Part="1" 
AR Path="/5CDE14E0/5CE1B613" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 1800 50  0001 C CNN
F 1 "+3.3V" H 4965 2123 50  0000 C CNN
F 2 "" H 4950 1950 50  0001 C CNN
F 3 "" H 4950 1950 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1900 6800 1900
Wire Wire Line
	4950 1950 4950 2150
Connection ~ 4950 2150
Wire Wire Line
	3500 3200 4450 3200
Wire Wire Line
	3500 3000 3500 3200
Wire Wire Line
	3750 3000 3500 3000
Text GLabel 3550 2800 0    50   Input ~ 0
TEMP_IN
Wire Wire Line
	3550 2800 3750 2800
Text GLabel 7800 2900 2    50   Input ~ 0
TEMP_OUT
Wire Wire Line
	7550 2900 7800 2900
Connection ~ 7550 2900
$EndSCHEMATC
