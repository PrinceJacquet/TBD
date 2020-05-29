EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L TIM_Microcontrollers_V5:STM32H103-OlimexBoard U7
U 1 1 5CEA9C56
P 8050 2350
F 0 "U7" H 8025 3915 50  0000 C CNN
F 1 "STM32H103-OlimexBoard" H 8025 3824 50  0000 C CNN
F 2 "TIM_Microcontrollers_V5:STM32H103-OlimexBoard" H 8100 2250 50  0001 C CNN
F 3 "" H 8100 2250 50  0001 C CNN
F 4 "Spécifique" H 8150 2400 50  0001 C CNN "Package"
F 5 "STM32-H103" H 8250 2500 50  0001 C CNN "RefManufacturer"
F 6 "2308262" H 8350 2600 50  0001 C CNN "RefDistributor"
	1    8050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CEAB39F
P 10000 3400
F 0 "R5" V 9793 3400 50  0000 C CNN
F 1 "R" V 9884 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9930 3400 50  0001 C CNN
F 3 "~" H 10000 3400 50  0001 C CNN
	1    10000 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 3400 9850 3400
$Comp
L Device:LED D1
U 1 1 5CEAC489
P 10400 3400
F 0 "D1" V 10439 3283 50  0000 R CNN
F 1 "LED" V 10348 3283 50  0000 R CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10400 3400 50  0001 C CNN
F 3 "~" H 10400 3400 50  0001 C CNN
	1    10400 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 3400 10250 3400
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U5
U 1 1 5CFE4453
P 4250 9800
F 0 "U5" H 4600 10150 50  0000 C CNN
F 1 "MCP2551-I-SN" H 3900 10150 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 4250 9300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 4250 9800 50  0001 C CNN
	1    4250 9800
	-1   0    0    -1  
$EndComp
Text GLabel 6300 1100 0    50   Input ~ 0
CANRX
Text GLabel 6300 1300 0    50   Input ~ 0
CANTX
Text GLabel 4900 9600 2    50   Input ~ 0
CANTX
Text GLabel 4900 9700 2    50   Input ~ 0
CANRX
Wire Wire Line
	4900 9600 4750 9600
Wire Wire Line
	4900 9700 4750 9700
Wire Wire Line
	4250 10450 4250 10300
$Comp
L TIM_Connectors_V5:RJ45_CANBUS J1
U 1 1 5CFEA373
P 1450 9650
F 0 "J1" V 1422 10128 60  0000 L CNN
F 1 "RJ45_CANBUS" V 1000 9450 60  0000 L CNN
F 2 "TIM_Connectors_V5:RJ45_CAN" V 2400 8900 60  0000 L CNN
F 3 "" H 1450 9800 60  0000 C CNN
F 4 "Spécifique" H 1900 10250 50  0001 C CNN "Package"
F 5 "5558342-1" H 2000 10350 50  0001 C CNN "RefManufacturer"
F 6 "2131148" H 2100 10450 50  0001 C CNN "RefDistributor"
F 7 "Constructeur : AMP" H 2200 10550 50  0001 C CNN "Notes"
	1    1450 9650
	0    -1   1    0   
$EndComp
Text GLabel 2150 9300 2    50   Input ~ 0
CANH
Text GLabel 2150 9400 2    50   Input ~ 0
CANL
Wire Wire Line
	2150 9300 1900 9300
Wire Wire Line
	2150 9400 1900 9400
$Comp
L power:GND #PWR0101
U 1 1 5CFEFFA0
P 2050 10350
F 0 "#PWR0101" H 2050 10100 50  0001 C CNN
F 1 "GND" H 2055 10177 50  0000 C CNN
F 2 "" H 2050 10350 50  0001 C CNN
F 3 "" H 2050 10350 50  0001 C CNN
	1    2050 10350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 10350 2050 10250
Wire Wire Line
	2050 9900 1900 9900
Wire Wire Line
	2050 9900 2050 9700
Wire Wire Line
	2050 9700 1900 9700
Connection ~ 2050 9900
Wire Wire Line
	2050 9700 2050 9500
Wire Wire Line
	2050 9500 1900 9500
Connection ~ 2050 9700
Wire Wire Line
	2050 10250 1100 10250
Wire Wire Line
	1100 10250 1100 10200
Connection ~ 2050 10250
Wire Wire Line
	2050 10250 2050 9900
Text GLabel 3600 9700 0    50   Input ~ 0
CANH
Text GLabel 3600 9900 0    50   Input ~ 0
CANL
Wire Wire Line
	3600 9700 3750 9700
Wire Wire Line
	3750 9900 3600 9900
$Comp
L power:+5V #PWR0102
U 1 1 5CFF1FE3
P 4250 9150
F 0 "#PWR0102" H 4250 9000 50  0001 C CNN
F 1 "+5V" H 4265 9323 50  0000 C CNN
F 2 "" H 4250 9150 50  0001 C CNN
F 3 "" H 4250 9150 50  0001 C CNN
	1    4250 9150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 9150 4250 9300
$Comp
L Device:C_Small C3
U 1 1 5CFF2F55
P 3200 9800
F 0 "C3" H 3292 9846 50  0000 L CNN
F 1 "100nF" H 3292 9755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 9800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 3200 9800 50  0001 C CNN
	1    3200 9800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 9700 3200 9300
Wire Wire Line
	3200 9300 4250 9300
Connection ~ 4250 9300
Wire Wire Line
	4250 9300 4250 9400
Wire Wire Line
	3200 9900 3200 10300
Wire Wire Line
	3200 10300 4250 10300
Connection ~ 4250 10300
Wire Wire Line
	4250 10300 4250 10200
Wire Wire Line
	6300 1100 6400 1100
Wire Wire Line
	6400 1300 6300 1300
$Comp
L power:+5V #PWR0103
U 1 1 5D0349FE
P 9750 3600
F 0 "#PWR0103" H 9750 3450 50  0001 C CNN
F 1 "+5V" H 9765 3773 50  0000 C CNN
F 2 "" H 9750 3600 50  0001 C CNN
F 3 "" H 9750 3600 50  0001 C CNN
	1    9750 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 3600 9650 3600
$Comp
L power:GND #PWR0104
U 1 1 5D04C0A5
P 9750 3500
F 0 "#PWR0104" H 9750 3250 50  0001 C CNN
F 1 "GND" V 9755 3372 50  0000 R CNN
F 2 "" H 9750 3500 50  0001 C CNN
F 3 "" H 9750 3500 50  0001 C CNN
	1    9750 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 3500 9650 3500
$Comp
L power:GND #PWR0105
U 1 1 5D04D876
P 9750 1600
F 0 "#PWR0105" H 9750 1350 50  0001 C CNN
F 1 "GND" V 9755 1472 50  0000 R CNN
F 2 "" H 9750 1600 50  0001 C CNN
F 3 "" H 9750 1600 50  0001 C CNN
	1    9750 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 1600 9650 1600
$Comp
L power:GND #PWR0106
U 1 1 5D04F471
P 6300 1600
F 0 "#PWR0106" H 6300 1350 50  0001 C CNN
F 1 "GND" V 6305 1472 50  0000 R CNN
F 2 "" H 6300 1600 50  0001 C CNN
F 3 "" H 6300 1600 50  0001 C CNN
	1    6300 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 1600 6400 1600
$Comp
L power:GND #PWR0107
U 1 1 5D05E13F
P 10600 3400
F 0 "#PWR0107" H 10600 3150 50  0001 C CNN
F 1 "GND" V 10605 3272 50  0000 R CNN
F 2 "" H 10600 3400 50  0001 C CNN
F 3 "" H 10600 3400 50  0001 C CNN
	1    10600 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10600 3400 10550 3400
$Comp
L power:GND #PWR0108
U 1 1 5D0646FB
P 9750 1300
F 0 "#PWR0108" H 9750 1050 50  0001 C CNN
F 1 "GND" V 9755 1172 50  0000 R CNN
F 2 "" H 9750 1300 50  0001 C CNN
F 3 "" H 9750 1300 50  0001 C CNN
	1    9750 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 1300 9650 1300
$Comp
L power:+3.3V #PWR0109
U 1 1 5D0AA759
P 6300 1500
F 0 "#PWR0109" H 6300 1350 50  0001 C CNN
F 1 "+3.3V" V 6315 1628 50  0000 L CNN
F 2 "" H 6300 1500 50  0001 C CNN
F 3 "" H 6300 1500 50  0001 C CNN
	1    6300 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 1500 6400 1500
$Comp
L Device:CP C2
U 1 1 5D097371
P 1950 3750
F 0 "C2" H 2000 3850 50  0000 L CNN
F 1 "1uF" H 2000 3650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1988 3600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2321614.pdf" H 1950 3750 50  0001 C CNN
	1    1950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3550 2100 3550
Connection ~ 1950 3550
Wire Wire Line
	1950 3600 1950 3550
Wire Wire Line
	1950 3950 2100 3950
Connection ~ 1950 3950
Wire Wire Line
	1950 3900 1950 3950
Wire Wire Line
	1600 3950 1950 3950
Wire Wire Line
	1600 3550 1950 3550
$Comp
L Device:CP C1
U 1 1 5D08334B
P 1600 3750
F 0 "C1" H 1650 3850 50  0000 L CNN
F 1 "22uF" H 1650 3650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1638 3600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2321614.pdf" H 1600 3750 50  0001 C CNN
	1    1600 3750
	1    0    0    -1  
$EndComp
Connection ~ 1600 3950
Wire Wire Line
	1600 3900 1600 3950
Connection ~ 1600 3550
Wire Wire Line
	1600 3600 1600 3550
Wire Wire Line
	1400 3950 1600 3950
Wire Wire Line
	1400 3650 1400 3950
Wire Wire Line
	1350 3650 1400 3650
$Comp
L power:GND #PWR0110
U 1 1 5D07814B
P 2100 3950
F 0 "#PWR0110" H 2100 3700 50  0001 C CNN
F 1 "GND" V 2105 3822 50  0000 R CNN
F 2 "" H 2100 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0001 C CNN
	1    2100 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 3550 1600 3550
$Comp
L power:+15V #PWR0111
U 1 1 5D073D99
P 2550 3550
F 0 "#PWR0111" H 2550 3400 50  0001 C CNN
F 1 "+15V" V 2650 3450 50  0000 L CNN
F 2 "" H 2550 3550 50  0001 C CNN
F 3 "" H 2550 3550 50  0001 C CNN
	1    2550 3550
	0    1    1    0   
$EndComp
$Comp
L TIM_Connectors_V5:MOLEX_SABRE_46007-1102 U1
U 1 1 5D07330D
P 1250 3600
F 0 "U1" H 1183 3898 50  0000 C CNN
F 1 "MOLEX_SABRE_46007-1102" H 1183 3807 50  0000 C CNN
F 2 "TIM_Connectors_V5:MOLEX_SABRE_46007-1102" H 1950 4400 50  0001 C CNN
F 3 "" H 1950 4550 50  0001 C CNN
F 4 "Spécifique" H 1350 4000 50  0001 C CNN "Package"
F 5 "43160-3102 " H 1450 4100 50  0001 C CNN "RefManufacturer"
F 6 "3293038" H 1550 4200 50  0001 C CNN "RefDistributor"
F 7 "Environ 10^23 références différentes qui changent toutes les 2 minutes" H 1650 4300 50  0001 C CNN "Notes"
	1    1250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5CFE98E2
P 4250 10450
F 0 "#PWR0112" H 4250 10200 50  0001 C CNN
F 1 "GND" H 4255 10277 50  0000 C CNN
F 2 "" H 4250 10450 50  0001 C CNN
F 3 "" H 4250 10450 50  0001 C CNN
	1    4250 10450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5D0072C3
P 2100 6250
F 0 "C8" H 2192 6296 50  0000 L CNN
F 1 "100nF" H 2192 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2100 6250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 2100 6250 50  0001 C CNN
	1    2100 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0113
U 1 1 5D003F21
P 2200 6100
F 0 "#PWR0113" H 2200 5950 50  0001 C CNN
F 1 "+5VA" H 2215 6273 50  0000 C CNN
F 2 "" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	0    1    1    0   
$EndComp
$Comp
L power:+15V #PWR0114
U 1 1 5D00372D
P 1000 6050
F 0 "#PWR0114" H 1000 5900 50  0001 C CNN
F 1 "+15V" H 1015 6223 50  0000 C CNN
F 2 "" H 1000 6050 50  0001 C CNN
F 3 "" H 1000 6050 50  0001 C CNN
	1    1000 6050
	1    0    0    -1  
$EndComp
Connection ~ 1100 6100
Wire Wire Line
	1000 6100 1000 6050
Wire Wire Line
	1100 6100 1000 6100
Connection ~ 2100 6100
Wire Wire Line
	2200 6100 2200 6050
Wire Wire Line
	2100 6450 2100 6350
Wire Wire Line
	1600 6450 2100 6450
Connection ~ 1600 6450
Wire Wire Line
	1600 6450 1600 6550
Wire Wire Line
	1600 6450 1600 6400
Wire Wire Line
	1100 6450 1600 6450
Wire Wire Line
	1100 6350 1100 6450
$Comp
L power:GND #PWR0115
U 1 1 5D00119C
P 1600 6550
F 0 "#PWR0115" H 1600 6300 50  0001 C CNN
F 1 "GND" H 1605 6377 50  0000 C CNN
F 2 "" H 1600 6550 50  0001 C CNN
F 3 "" H 1600 6550 50  0001 C CNN
	1    1600 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6100 2100 6150
Wire Wire Line
	1900 6100 2100 6100
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5CFFFD5F
P 1600 6100
F 0 "U3" H 1600 6342 50  0000 C CNN
F 1 "L7805" H 1600 6251 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 1625 5950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1600 6050 50  0001 C CNN
	1    1600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6100 1300 6100
Wire Wire Line
	1100 6150 1100 6100
$Comp
L Device:C_Small C5
U 1 1 5CFFE2E6
P 1100 6250
F 0 "C5" H 1192 6296 50  0000 L CNN
F 1 "330nF" H 1150 6200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1100 6250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 1100 6250 50  0001 C CNN
	1    1100 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5D00B9C6
P 2300 4850
F 0 "#PWR0116" H 2300 4700 50  0001 C CNN
F 1 "+5V" H 2315 5023 50  0000 C CNN
F 2 "" H 2300 4850 50  0001 C CNN
F 3 "" H 2300 4850 50  0001 C CNN
	1    2300 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5D00A973
P 2100 5050
F 0 "C7" H 2192 5096 50  0000 L CNN
F 1 "100nF" H 2192 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2100 5050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 2100 5050 50  0001 C CNN
	1    2100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0117
U 1 1 5D00A967
P 1000 4850
F 0 "#PWR0117" H 1000 4700 50  0001 C CNN
F 1 "+15V" H 1015 5023 50  0000 C CNN
F 2 "" H 1000 4850 50  0001 C CNN
F 3 "" H 1000 4850 50  0001 C CNN
	1    1000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4900 1000 4850
Wire Wire Line
	2200 4900 2200 4850
Wire Wire Line
	2100 4900 2200 4900
Wire Wire Line
	2100 5250 2100 5150
Wire Wire Line
	1600 5250 2100 5250
Wire Wire Line
	1600 5250 1600 5350
Connection ~ 1600 5250
Wire Wire Line
	1600 5250 1600 5200
Wire Wire Line
	1100 5250 1600 5250
Wire Wire Line
	1100 5150 1100 5250
$Comp
L power:GND #PWR0118
U 1 1 5D00A954
P 1600 5350
F 0 "#PWR0118" H 1600 5100 50  0001 C CNN
F 1 "GND" H 1605 5177 50  0000 C CNN
F 2 "" H 1600 5350 50  0001 C CNN
F 3 "" H 1600 5350 50  0001 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4900 2100 4950
Connection ~ 2100 4900
Wire Wire Line
	1900 4900 2100 4900
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5D00A94C
P 1600 4900
F 0 "U2" H 1600 5142 50  0000 C CNN
F 1 "L7805" H 1600 5051 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 1625 4750 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1600 4850 50  0001 C CNN
	1    1600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4900 1000 4900
Wire Wire Line
	1100 4900 1300 4900
Connection ~ 1100 4900
Wire Wire Line
	1100 4950 1100 4900
$Comp
L Device:C_Small C4
U 1 1 5D00A944
P 1100 5050
F 0 "C4" H 1192 5096 50  0000 L CNN
F 1 "330nF" H 1150 5000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1100 5050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 1100 5050 50  0001 C CNN
	1    1100 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5D0EE45B
P 15000 1850
F 0 "J6" H 14800 1550 50  0000 C CNN
F 1 "Conn_01x02_Female" H 15150 1650 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 15000 1850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2698288.pdf" H 15000 1850 50  0001 C CNN
	1    15000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 1950 14700 1950
Wire Wire Line
	14700 1950 14700 2250
$Comp
L power:GND #PWR0119
U 1 1 5D00116B
P 14700 2250
F 0 "#PWR0119" H 14700 2000 50  0001 C CNN
F 1 "GND" H 14705 2077 50  0000 C CNN
F 2 "" H 14700 2250 50  0001 C CNN
F 3 "" H 14700 2250 50  0001 C CNN
	1    14700 2250
	1    0    0    -1  
$EndComp
Text GLabel 14800 1850 0    50   Input ~ 0
LIGHTS_SW
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5D00827E
P 15000 3750
F 0 "J7" H 14800 3450 50  0000 C CNN
F 1 "Conn_01x02_Female" H 15150 3550 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 15000 3750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2698288.pdf" H 15000 3750 50  0001 C CNN
	1    15000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 3850 14700 3850
Wire Wire Line
	14700 3850 14700 4150
Wire Wire Line
	14800 3750 14600 3750
Wire Wire Line
	14150 4150 14700 4150
$Comp
L power:GND #PWR0121
U 1 1 5D0082A0
P 14150 4200
F 0 "#PWR0121" H 14150 3950 50  0001 C CNN
F 1 "GND" H 14155 4027 50  0000 C CNN
F 2 "" H 14150 4200 50  0001 C CNN
F 3 "" H 14150 4200 50  0001 C CNN
	1    14150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 4200 14150 4150
Text GLabel 14600 3750 0    50   Input ~ 0
BRAKES_SW
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5D00A6C1
P 14950 5500
F 0 "J5" H 14750 5200 50  0000 C CNN
F 1 "Conn_01x02_Female" H 15100 5300 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 14950 5500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2698288.pdf" H 14950 5500 50  0001 C CNN
	1    14950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14750 5600 14650 5600
Wire Wire Line
	14650 5600 14650 5900
Wire Wire Line
	14750 5500 14550 5500
Text GLabel 14550 5500 0    50   Input ~ 0
CLIM_SW
$Comp
L AT07_TDB-V3_2-rescue:Conn_01x03_Female_Servomotor-TIM_Connectors_V5-AT07_TDB-V3-rescue J3
U 1 1 5D027EBD
P 8850 10200
F 0 "J3" H 8650 10000 50  0000 L CNN
F 1 "Conn_01x03_Female_Servomotor" H 8500 9900 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 8850 10200 50  0001 C CNN
F 3 "~" H 8850 10200 50  0001 C CNN
	1    8850 10200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5D028C25
P 6700 10350
F 0 "#PWR0124" H 6700 10100 50  0001 C CNN
F 1 "GND" V 6705 10222 50  0000 R CNN
F 2 "" H 6700 10350 50  0001 C CNN
F 3 "" H 6700 10350 50  0001 C CNN
	1    6700 10350
	0    1    1    0   
$EndComp
Text GLabel 8550 10300 0    50   Input ~ 0
PWM_SERVO
$Comp
L AT07_TDB-V3_2-rescue:Conn_01x03_Female_Potar-TIM_Connectors_V5-AT07_TDB-V3-rescue J2
U 1 1 5D0495C5
P 15000 9250
F 0 "J2" H 14800 9050 50  0000 L CNN
F 1 "Conn_01x03_Female_Potar" H 14800 8950 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 15000 9250 50  0001 C CNN
F 3 "~" H 15000 9250 50  0001 C CNN
	1    15000 9250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5D04A7C7
P 14700 9150
F 0 "#PWR0125" H 14700 8900 50  0001 C CNN
F 1 "GND" V 14705 9022 50  0000 R CNN
F 2 "" H 14700 9150 50  0001 C CNN
F 3 "" H 14700 9150 50  0001 C CNN
	1    14700 9150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0126
U 1 1 5D04B003
P 14700 9250
F 0 "#PWR0126" H 14700 9100 50  0001 C CNN
F 1 "+3.3V" V 14715 9378 50  0000 L CNN
F 2 "" H 14700 9250 50  0001 C CNN
F 3 "" H 14700 9250 50  0001 C CNN
	1    14700 9250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14700 9250 14800 9250
Wire Wire Line
	14700 9150 14800 9150
Text GLabel 14150 9350 0    50   Input ~ 0
SIGNAL_POTAR
Wire Wire Line
	14700 9350 14800 9350
$Comp
L power:GND #PWR0127
U 1 1 5D05A85C
P 14700 7200
F 0 "#PWR0127" H 14700 6950 50  0001 C CNN
F 1 "GND" V 14600 7150 50  0000 R CNN
F 2 "" H 14700 7200 50  0001 C CNN
F 3 "" H 14700 7200 50  0001 C CNN
	1    14700 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	14700 7200 14800 7200
Wire Wire Line
	14700 7400 14800 7400
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5D05FB3F
P 15000 7300
F 0 "J8" H 15028 7326 50  0000 L CNN
F 1 "Conn_01x03_Female" H 15028 7235 50  0000 L CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 15000 7300 50  0001 C CNN
F 3 "~" H 15000 7300 50  0001 C CNN
	1    15000 7300
	1    0    0    -1  
$EndComp
Text GLabel 14500 7300 0    50   Input ~ 0
WIPER_SPEED_1
Text Notes 14300 6500 0    50   ~ 0
Filtres anti-rebond\nFréquence de coupure : 525 Hz\nTemps de réponse : <20ms
Wire Wire Line
	14500 7300 14800 7300
Text GLabel 14700 7400 0    50   Input ~ 0
WIPER_SPEED_2
Text Notes 14800 7650 0    50   ~ 0
Vers interrupteur 3 positions\nessuie-glace
$Comp
L Device:Q_NMOS_GDSD Q2
U 1 1 5D104039
P 7350 10250
F 0 "Q2" V 7600 10100 50  0000 C CNN
F 1 "IRFZ44Z" V 7700 10200 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 7550 10350 50  0001 C CNN
F 3 "http://www.irf.com/product-info/datasheets/data/irfz44z.pdf" H 7350 10250 50  0001 C CNN
	1    7350 10250
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 10200 8650 10200
Wire Wire Line
	6700 10350 6800 10350
Wire Wire Line
	7550 10350 7600 10350
Wire Wire Line
	7550 10450 7600 10450
Wire Wire Line
	7600 10450 7600 10400
$Comp
L power:+5VA #PWR0132
U 1 1 5D147F3E
P 8550 10200
F 0 "#PWR0132" H 8550 10050 50  0001 C CNN
F 1 "+5VA" V 8565 10327 50  0000 L CNN
F 2 "" H 8550 10200 50  0001 C CNN
F 3 "" H 8550 10200 50  0001 C CNN
	1    8550 10200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D14852B
P 7100 10050
F 0 "R4" V 6893 10050 50  0000 C CNN
F 1 "10k" V 6984 10050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 10050 50  0001 C CNN
F 3 "~" H 7100 10050 50  0001 C CNN
	1    7100 10050
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 10050 7250 10050
Wire Wire Line
	6950 10050 6800 10050
Wire Wire Line
	6800 10050 6800 10350
Connection ~ 6800 10350
Wire Wire Line
	6800 10350 7150 10350
Connection ~ 7350 10050
$Comp
L AT07_TDB-V3_2-rescue:TC4424-TIM_Active_Components_V5-AT07_TDB-V3-rescue U6
U 1 1 5D16109F
P 7550 7000
F 0 "U6" H 7200 7450 50  0000 C CNN
F 1 "TC4424" H 7300 7350 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 7550 6700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21421E.pdf" H 7550 6700 50  0001 C CNN
	1    7550 7000
	1    0    0    -1  
$EndComp
Text GLabel 6800 9750 0    50   Input ~ 0
SERVO_CMD_HPWR
Text GLabel 8350 7100 2    50   Input ~ 0
SERVO_CMD_HPWR
Text GLabel 6950 7100 0    50   Input ~ 0
SERVO_CMD_LPWR
Text GLabel 9650 2900 2    50   Output ~ 0
SERVO_CMD_LPWR
$Comp
L power:+15V #PWR0133
U 1 1 5D174F46
P 7550 6350
F 0 "#PWR0133" H 7550 6200 50  0001 C CNN
F 1 "+15V" H 7565 6523 50  0000 C CNN
F 2 "" H 7550 6350 50  0001 C CNN
F 3 "" H 7550 6350 50  0001 C CNN
	1    7550 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5D17B4F5
P 7550 7550
F 0 "#PWR0134" H 7550 7300 50  0001 C CNN
F 1 "GND" H 7555 7377 50  0000 C CNN
F 2 "" H 7550 7550 50  0001 C CNN
F 3 "" H 7550 7550 50  0001 C CNN
	1    7550 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5D1816B6
P 9600 7000
F 0 "C13" H 9650 7100 50  0000 L CNN
F 1 "1uF" H 9650 6900 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9638 6850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2321614.pdf" H 9600 7000 50  0001 C CNN
	1    9600 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5D18229A
P 9150 7000
F 0 "C12" H 9242 7046 50  0000 L CNN
F 1 "100nF" H 9242 6955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9150 7000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 9150 7000 50  0001 C CNN
	1    9150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 6450 9150 6900
Wire Wire Line
	9150 6450 9600 6450
Wire Wire Line
	9600 6450 9600 6850
Connection ~ 9150 6450
Wire Wire Line
	9150 7100 9150 7500
Wire Wire Line
	9600 7150 9600 7500
Wire Wire Line
	9600 7500 9150 7500
Connection ~ 9150 7500
Wire Wire Line
	7550 6350 7550 6450
Wire Wire Line
	7550 7400 7550 7500
Wire Wire Line
	7550 6450 9150 6450
Connection ~ 7550 6450
Wire Wire Line
	7550 6450 7550 6600
Wire Wire Line
	7550 7500 8000 7500
Connection ~ 7550 7500
Wire Wire Line
	7550 7500 7550 7550
$Comp
L Device:C_Small C11
U 1 1 5D1B9264
P 8300 7250
F 0 "C11" H 8392 7296 50  0000 L CNN
F 1 "1nF" H 8392 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8300 7250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 8300 7250 50  0001 C CNN
	1    8300 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 7100 7100 7100
Wire Wire Line
	8300 7100 8300 7150
Connection ~ 8300 7100
Wire Wire Line
	8300 7100 8350 7100
Wire Wire Line
	8300 7350 8300 7500
Connection ~ 8300 7500
Wire Wire Line
	8300 7500 9150 7500
$Comp
L Device:R R3
U 1 1 5D1E3F19
P 7100 9750
F 0 "R3" V 6893 9750 50  0000 C CNN
F 1 "10" V 6984 9750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 9750 50  0001 C CNN
F 3 "~" H 7100 9750 50  0001 C CNN
	1    7100 9750
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 9750 7350 9750
Wire Wire Line
	7350 9750 7350 10050
$Comp
L power:GND #PWR0135
U 1 1 5D241D95
P 6650 9150
F 0 "#PWR0135" H 6650 8900 50  0001 C CNN
F 1 "GND" V 6655 9022 50  0000 R CNN
F 2 "" H 6650 9150 50  0001 C CNN
F 3 "" H 6650 9150 50  0001 C CNN
	1    6650 9150
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GDSD Q1
U 1 1 5D241D9D
P 7300 9050
F 0 "Q1" V 7350 8850 50  0000 C CNN
F 1 "IRFZ44Z" V 7250 8800 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 7500 9150 50  0001 C CNN
F 3 "http://www.irf.com/product-info/datasheets/data/irfz44z.pdf" H 7300 9050 50  0001 C CNN
	1    7300 9050
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 9150 6750 9150
Wire Wire Line
	7500 9150 7550 9150
Wire Wire Line
	7500 9250 7550 9250
Wire Wire Line
	7550 9250 7550 9200
Wire Wire Line
	7650 8750 8750 8750
$Comp
L Device:R R2
U 1 1 5D241DB0
P 7050 8850
F 0 "R2" V 6843 8850 50  0000 C CNN
F 1 "10k" V 6934 8850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6980 8850 50  0001 C CNN
F 3 "~" H 7050 8850 50  0001 C CNN
	1    7050 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 8850 7200 8850
Wire Wire Line
	6900 8850 6750 8850
Wire Wire Line
	6750 8850 6750 9150
Connection ~ 6750 9150
Wire Wire Line
	6750 9150 7100 9150
Connection ~ 7300 8850
Text GLabel 6750 8550 0    50   Input ~ 0
CLIM_CMD_HPWR
$Comp
L Device:R R1
U 1 1 5D241DBD
P 7050 8550
F 0 "R1" V 6843 8550 50  0000 C CNN
F 1 "10" V 6934 8550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6980 8550 50  0001 C CNN
F 3 "~" H 7050 8550 50  0001 C CNN
	1    7050 8550
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 8550 7300 8550
Wire Wire Line
	7300 8550 7300 8850
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5D2753BA
P 8950 8750
F 0 "J4" H 8750 8450 50  0000 C CNN
F 1 "Conn_01x02_Female" H 9100 8550 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 8950 8750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2698288.pdf" H 8950 8750 50  0001 C CNN
	1    8950 8750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7812 U4
U 1 1 5D27F38D
P 1600 7350
F 0 "U4" H 1600 7592 50  0000 C CNN
F 1 "L7812" H 1600 7501 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 1625 7200 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1600 7300 50  0001 C CNN
	1    1600 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5D28140E
P 2100 7500
F 0 "C9" H 2192 7546 50  0000 L CNN
F 1 "100nF" H 2192 7455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2100 7500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 2100 7500 50  0001 C CNN
	1    2100 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0136
U 1 1 5D28141A
P 1000 7300
F 0 "#PWR0136" H 1000 7150 50  0001 C CNN
F 1 "+15V" H 1015 7473 50  0000 C CNN
F 2 "" H 1000 7300 50  0001 C CNN
F 3 "" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
Connection ~ 1100 7350
Wire Wire Line
	1000 7350 1000 7300
Wire Wire Line
	1100 7350 1000 7350
Connection ~ 2100 7350
Wire Wire Line
	2200 7350 2200 7300
Wire Wire Line
	2100 7350 2200 7350
Wire Wire Line
	2100 7700 2100 7600
Wire Wire Line
	1600 7700 2100 7700
Connection ~ 1600 7700
Wire Wire Line
	1600 7700 1600 7800
Wire Wire Line
	1600 7700 1600 7650
Wire Wire Line
	1100 7700 1600 7700
Wire Wire Line
	1100 7600 1100 7700
$Comp
L power:GND #PWR0137
U 1 1 5D28142D
P 1600 7800
F 0 "#PWR0137" H 1600 7550 50  0001 C CNN
F 1 "GND" H 1605 7627 50  0000 C CNN
F 2 "" H 1600 7800 50  0001 C CNN
F 3 "" H 1600 7800 50  0001 C CNN
	1    1600 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7350 2100 7400
Wire Wire Line
	1900 7350 2100 7350
Wire Wire Line
	1100 7350 1300 7350
Wire Wire Line
	1100 7400 1100 7350
$Comp
L Device:C_Small C6
U 1 1 5D28143D
P 1100 7500
F 0 "C6" H 1192 7546 50  0000 L CNN
F 1 "330nF" H 1150 7450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1100 7500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 1100 7500 50  0001 C CNN
	1    1100 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR0138
U 1 1 5D2AA1E9
P 2300 7350
F 0 "#PWR0138" H 2300 7200 50  0001 C CNN
F 1 "+12VA" H 2315 7523 50  0000 C CNN
F 2 "" H 2300 7350 50  0001 C CNN
F 3 "" H 2300 7350 50  0001 C CNN
	1    2300 7350
	0    1    1    0   
$EndComp
$Comp
L power:+12VA #PWR0139
U 1 1 5D2AA46A
P 8700 8850
F 0 "#PWR0139" H 8700 8700 50  0001 C CNN
F 1 "+12VA" V 8715 8977 50  0000 L CNN
F 2 "" H 8700 8850 50  0001 C CNN
F 3 "" H 8700 8850 50  0001 C CNN
	1    8700 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 8850 8750 8850
Text GLabel 8350 6900 2    50   Input ~ 0
CLIM_CMD_HPWR
$Comp
L Device:C_Small C10
U 1 1 5D2C9A84
P 8000 7250
F 0 "C10" H 8092 7296 50  0000 L CNN
F 1 "1nF" H 8092 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8000 7250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1955213.pdf" H 8000 7250 50  0001 C CNN
	1    8000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 7150 8000 6900
Connection ~ 8000 6900
Wire Wire Line
	8000 6900 7950 6900
Wire Wire Line
	8000 7350 8000 7500
Connection ~ 8000 7500
Wire Wire Line
	8000 7500 8300 7500
Text GLabel 6950 6900 0    50   Input ~ 0
CLIM_CMD_LPWR
Wire Wire Line
	6950 6900 7050 6900
Text GLabel 9650 2800 2    50   Output ~ 0
CLIM_CMD_LPWR
Text GLabel 6400 1800 0    50   Input ~ 0
WIPER_SPEED_1
Text GLabel 6400 1400 0    50   Input ~ 0
WIPER_SPEED_2
Text Notes 15100 1950 0    50   ~ 0
Vers interrupteur\nphares
Text Notes 15100 3850 0    50   ~ 0
Vers interrupteur\nfreins
Text Notes 15050 5600 0    50   ~ 0
Vers interrupteur\nclim
$Comp
L power:GND #PWR0140
U 1 1 5D364AB1
P 14650 5900
F 0 "#PWR0140" H 14650 5650 50  0001 C CNN
F 1 "GND" H 14655 5727 50  0000 C CNN
F 2 "" H 14650 5900 50  0001 C CNN
F 3 "" H 14650 5900 50  0001 C CNN
	1    14650 5900
	1    0    0    -1  
$EndComp
Text Notes 8400 8600 0    50   ~ 0
Vers ventilateur clim
Text Notes 8300 9950 0    50   ~ 0
Vers servomoteur essuie-glace
Wire Wire Line
	8650 10100 7650 10100
Text Notes 14550 9000 0    50   ~ 0
Retour angle essuie-glace
Text GLabel 9650 1400 2    50   Output ~ 0
PWM_SERVO
Text GLabel 6400 2400 0    50   Output ~ 0
CLIM_SW
Text GLabel 6400 2000 0    50   Output ~ 0
SIGNAL_POTAR
Text GLabel 6400 2200 0    50   Output ~ 0
BRAKES_SW
Text GLabel 6400 2600 0    50   Output ~ 0
LIGHTS_SW
Text Notes 8000 7400 0    50   ~ 0
0.1uF à la soudure\n
Wire Notes Line
	15900 800  15900 2700
Wire Notes Line
	15900 2700 12950 2700
Wire Notes Line
	12950 2700 12950 800 
Wire Notes Line
	12950 800  15900 800 
Wire Notes Line
	12950 2850 15900 2850
Wire Notes Line
	15900 2850 15900 4500
Wire Notes Line
	15900 4500 12950 4500
Wire Notes Line
	12950 2850 12950 4500
Wire Notes Line
	15900 4650 15900 6650
Wire Notes Line
	15900 6650 12950 6650
Wire Notes Line
	12950 6650 12950 4650
Wire Notes Line
	12950 4650 15900 4650
Wire Notes Line
	15900 6850 15900 8500
Wire Notes Line
	15900 8500 12950 8500
Wire Notes Line
	12950 8500 12950 6850
Wire Notes Line
	12950 6850 15900 6850
Wire Notes Line
	15900 8650 13450 8650
Wire Notes Line
	13450 8650 13450 9900
Wire Notes Line
	13450 9900 15900 9900
Wire Notes Line
	15900 8650 15900 9900
Wire Notes Line
	9950 11000 5900 11000
Wire Notes Line
	5900 11000 5900 9500
Wire Notes Line
	5900 9500 9950 9500
Wire Notes Line
	9950 8150 5900 8150
Wire Notes Line
	5900 8150 5900 9450
Wire Notes Line
	5900 9450 9950 9450
Wire Notes Line
	9950 8150 9950 11000
Wire Wire Line
	7650 8750 7650 9200
Wire Wire Line
	7650 9200 7550 9200
Connection ~ 7550 9200
Wire Wire Line
	7550 9200 7550 9150
Wire Wire Line
	7600 10400 7650 10400
Wire Wire Line
	7650 10400 7650 10100
Connection ~ 7600 10400
Wire Wire Line
	7600 10400 7600 10350
Wire Notes Line
	6050 6050 9850 6050
Wire Notes Line
	9850 6050 9850 7850
Wire Notes Line
	9850 7850 6050 7850
Wire Notes Line
	6050 6050 6050 7850
Wire Notes Line
	2450 5600 750  5600
Wire Notes Line
	750  5600 750  4550
Wire Notes Line
	750  4550 2450 4550
Wire Notes Line
	2450 4550 2450 5600
Wire Notes Line
	2450 5750 750  5750
Wire Notes Line
	750  5750 750  6850
Wire Notes Line
	750  6850 2450 6850
Wire Notes Line
	2450 6850 2450 5750
Wire Notes Line
	2450 7000 2450 8050
Wire Notes Line
	750  8050 750  7000
Wire Notes Line
	750  7000 2450 7000
Wire Notes Line
	750  8050 2450 8050
Wire Notes Line
	2600 3050 600  3050
Wire Notes Line
	600  3050 600  4400
Wire Notes Line
	600  4400 2600 4400
Wire Notes Line
	2600 3050 2600 4400
Wire Notes Line
	2850 10700 2850 8900
Wire Notes Line
	2850 8900 5250 8900
Wire Notes Line
	5300 9200 5300 11000
Wire Notes Line
	2850 10700 5250 10700
Wire Notes Line
	2700 10700 550  10700
Wire Notes Line
	550  10700 550  9000
Wire Notes Line
	550  9000 2700 9000
Wire Notes Line
	2700 9000 2700 10700
Text Notes 650  8500 0    197  ~ 39
ALIMENTATION
Text Notes 1700 11050 0    197  ~ 39
Communication CAN\n
$Comp
L Device:D D2
U 1 1 5D748989
P 2250 3550
F 0 "D2" H 2250 3334 50  0000 C CNN
F 1 "D" H 2250 3425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2250 3550 50  0001 C CNN
F 3 "~" H 2250 3550 50  0001 C CNN
	1    2250 3550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5D74D89F
P 2550 3350
F 0 "J9" V 2612 3394 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2500 3000 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 2550 3350 50  0001 C CNN
F 3 "~" H 2550 3350 50  0001 C CNN
	1    2550 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3550 2450 3550
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5D6A8C5C
P 2300 4650
F 0 "J11" V 2362 4694 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2453 4694 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 4650 50  0001 C CNN
F 3 "~" H 2300 4650 50  0001 C CNN
	1    2300 4650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5D6E26FE
P 2200 5900
F 0 "J10" V 2262 5944 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2353 5944 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 5900 50  0001 C CNN
F 3 "~" H 2200 5900 50  0001 C CNN
	1    2200 5900
	0    1    1    0   
$EndComp
Connection ~ 2200 6100
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5D6EA846
P 2300 7150
F 0 "J12" V 2362 7194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2453 7194 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 7150 50  0001 C CNN
F 3 "~" H 2300 7150 50  0001 C CNN
	1    2300 7150
	0    1    1    0   
$EndComp
Connection ~ 2200 7350
$Comp
L Connector:Conn_01x01_Female J18
U 1 1 5D717E41
P 14700 9550
F 0 "J18" V 14546 9598 50  0000 L CNN
F 1 "Conn_01x01_Female" V 14637 9598 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 14700 9550 50  0001 C CNN
F 3 "~" H 14700 9550 50  0001 C CNN
	1    14700 9550
	0    1    1    0   
$EndComp
Connection ~ 14700 9350
$Comp
L Connector:Conn_01x01_Female J21
U 1 1 5D723C68
P 7050 7100
F 0 "J21" V 6896 7148 50  0000 L CNN
F 1 "Conn_01x01_Female" V 6987 7148 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7050 7100 50  0001 C CNN
F 3 "~" H 7050 7100 50  0001 C CNN
	1    7050 7100
	0    1    1    0   
$EndComp
Connection ~ 7050 6900
Wire Wire Line
	7050 6900 7150 6900
$Comp
L Connector:Conn_01x01_Female J22
U 1 1 5D7240C6
P 7100 7300
F 0 "J22" V 6946 7348 50  0000 L CNN
F 1 "Conn_01x01_Female" V 7037 7348 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7100 7300 50  0001 C CNN
F 3 "~" H 7100 7300 50  0001 C CNN
	1    7100 7300
	0    1    1    0   
$EndComp
Connection ~ 7100 7100
Wire Wire Line
	7100 7100 7150 7100
Wire Wire Line
	6750 8550 6900 8550
Wire Wire Line
	6800 9750 6950 9750
Wire Wire Line
	14150 9350 14700 9350
Wire Wire Line
	8000 6900 8350 6900
Wire Wire Line
	7950 7100 8300 7100
Wire Wire Line
	8550 10300 8650 10300
$EndSCHEMATC
