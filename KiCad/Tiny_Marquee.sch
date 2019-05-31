EESchema Schematic File Version 4
LIBS:Tiny_Marquee-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MiniMarquee"
Date "2019-04-21"
Rev "v0.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D7
U 1 1 5BB4EF8C
P 8000 3200
F 0 "D7" H 8000 3570 50  0000 C CNN
F 1 "LED_RGB" H 8000 2850 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8000 3150 50  0001 C CNN
F 3 "" H 8000 3150 50  0001 C CNN
	1    8000 3200
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D8
U 1 1 5BB4F02C
P 8550 3200
F 0 "D8" H 8550 3570 50  0000 C CNN
F 1 "LED_RGB" H 8550 2850 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8550 3150 50  0001 C CNN
F 3 "" H 8550 3150 50  0001 C CNN
	1    8550 3200
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D9
U 1 1 5BB4F050
P 9100 3200
F 0 "D9" H 9100 3570 50  0000 C CNN
F 1 "LED_RGB" H 9100 2850 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 9100 3150 50  0001 C CNN
F 3 "" H 9100 3150 50  0001 C CNN
	1    9100 3200
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D10
U 1 1 5BB4F11A
P 8000 4050
F 0 "D10" H 8000 4420 50  0000 C CNN
F 1 "LED_RGB" H 8000 3700 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8000 4000 50  0001 C CNN
F 3 "" H 8000 4000 50  0001 C CNN
	1    8000 4050
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D11
U 1 1 5BB4F142
P 8550 4050
F 0 "D11" H 8550 4420 50  0000 C CNN
F 1 "LED_RGB" H 8550 3700 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8550 4000 50  0001 C CNN
F 3 "" H 8550 4000 50  0001 C CNN
	1    8550 4050
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D12
U 1 1 5BB4F16B
P 9100 4050
F 0 "D12" H 9100 4420 50  0000 C CNN
F 1 "LED_RGB" H 9100 3700 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 9100 4000 50  0001 C CNN
F 3 "" H 9100 4000 50  0001 C CNN
	1    9100 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5BB4F8CF
P 9800 6000
F 0 "#PWR021" H 9800 5750 50  0001 C CNN
F 1 "GND" H 9800 5850 50  0000 C CNN
F 2 "" H 9800 6000 50  0001 C CNN
F 3 "" H 9800 6000 50  0001 C CNN
	1    9800 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR020
U 1 1 5BB4F98D
P 7700 1100
F 0 "#PWR020" H 7700 950 50  0001 C CNN
F 1 "+12V" H 7700 1240 50  0000 C CNN
F 2 "" H 7700 1100 50  0001 C CNN
F 3 "" H 7700 1100 50  0001 C CNN
	1    7700 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RV_4
U 1 1 5BB4FB2A
P 9550 4250
F 0 "RV_4" V 9630 4250 50  0000 C CNN
F 1 "150R" V 9550 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 4250 50  0001 C CNN
F 3 "" H 9550 4250 50  0001 C CNN
	1    9550 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_8
U 1 1 5BB4FC65
P 9550 4050
F 0 "RV_8" V 9630 4050 50  0000 C CNN
F 1 "220R" V 9550 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 4050 50  0001 C CNN
F 3 "" H 9550 4050 50  0001 C CNN
	1    9550 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_12
U 1 1 5BB4FCA8
P 9550 3850
F 0 "RV_12" V 9630 3850 50  0000 C CNN
F 1 "150R" V 9550 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 3850 50  0001 C CNN
F 3 "" H 9550 3850 50  0001 C CNN
	1    9550 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_11
U 1 1 5BB50BF5
P 9550 3000
F 0 "RV_11" V 9630 3000 50  0000 C CNN
F 1 "150R" V 9550 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 3000 50  0001 C CNN
F 3 "" H 9550 3000 50  0001 C CNN
	1    9550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_7
U 1 1 5BB50C5B
P 9550 3200
F 0 "RV_7" V 9630 3200 50  0000 C CNN
F 1 "220R" V 9550 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 3200 50  0001 C CNN
F 3 "" H 9550 3200 50  0001 C CNN
	1    9550 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_3
U 1 1 5BB50CA2
P 9550 3400
F 0 "RV_3" V 9630 3400 50  0000 C CNN
F 1 "150R" V 9550 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 3400 50  0001 C CNN
F 3 "" H 9550 3400 50  0001 C CNN
	1    9550 3400
	0    1    1    0   
$EndComp
$Comp
L Tiny_Marquee-rescue:ATMEGA168-20AU-Tiny_Marquee-rescue U1
U 1 1 5BB51C69
P 2200 2050
F 0 "U1" H 1450 3300 50  0000 L BNN
F 1 "ATMEGA168-20AU" H 2650 650 50  0000 L BNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2200 2050 50  0001 C CIN
F 3 "" H 2200 2050 50  0001 C CNN
	1    2200 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5BB51CF5
P 1200 900
F 0 "#PWR05" H 1200 750 50  0001 C CNN
F 1 "+5V" H 1200 1040 50  0000 C CNN
F 2 "" H 1200 900 50  0001 C CNN
F 3 "" H 1200 900 50  0001 C CNN
	1    1200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5BB51EED
P 1200 3350
F 0 "#PWR07" H 1200 3100 50  0001 C CNN
F 1 "GND" H 1200 3200 50  0000 C CNN
F 2 "" H 1200 3350 50  0001 C CNN
F 3 "" H 1200 3350 50  0001 C CNN
	1    1200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BB521EA
P 1200 1750
F 0 "C2" H 1210 1820 50  0000 L CNN
F 1 "100nF" H 950 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1200 1750 50  0001 C CNN
F 3 "" H 1200 1750 50  0001 C CNN
	1    1200 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BB5232A
P 1200 1950
F 0 "#PWR06" H 1200 1700 50  0001 C CNN
F 1 "GND" H 1200 1800 50  0000 C CNN
F 2 "" H 1200 1950 50  0001 C CNN
F 3 "" H 1200 1950 50  0001 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5BB52662
P 3900 1650
F 0 "Y1" H 3900 1400 50  0000 C CNN
F 1 "16MHz" H 3900 1500 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 3900 1650 50  0001 C CNN
F 3 "" H 3900 1650 50  0001 C CNN
	1    3900 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BB52B6C
P 3750 1800
F 0 "C3" H 3760 1870 50  0000 L CNN
F 1 "22pF" H 3650 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3750 1800 50  0001 C CNN
F 3 "" H 3750 1800 50  0001 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5BB52BD6
P 4050 1800
F 0 "C4" H 4060 1870 50  0000 L CNN
F 1 "22pF" H 4000 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5BB52EC7
P 3900 1950
F 0 "#PWR011" H 3900 1700 50  0001 C CNN
F 1 "GND" H 3900 1800 50  0000 C CNN
F 2 "" H 3900 1950 50  0001 C CNN
F 3 "" H 3900 1950 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:SW_Push-Tiny_Marquee-rescue SW_RST1
U 1 1 5BB530EA
P 3700 5050
F 0 "SW_RST1" H 3750 5150 50  0000 L CNN
F 1 "SW_Push" H 3700 4990 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3700 5250 50  0001 C CNN
F 3 "" H 3700 5250 50  0001 C CNN
	1    3700 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5BB53211
P 4050 5550
F 0 "#PWR012" H 4050 5300 50  0001 C CNN
F 1 "GND" H 4050 5400 50  0000 C CNN
F 2 "" H 4050 5550 50  0001 C CNN
F 3 "" H 4050 5550 50  0001 C CNN
	1    4050 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BB533B0
P 3400 4800
F 0 "R1" V 3480 4800 50  0000 C CNN
F 1 "12K" V 3400 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 4800 50  0001 C CNN
F 3 "" H 3400 4800 50  0001 C CNN
	1    3400 4800
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5BB53CCC
P 3400 4600
F 0 "#PWR08" H 3400 4450 50  0001 C CNN
F 1 "+5V" H 3400 4740 50  0000 C CNN
F 2 "" H 3400 4600 50  0001 C CNN
F 3 "" H 3400 4600 50  0001 C CNN
	1    3400 4600
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:SW_Push-Tiny_Marquee-rescue SW_LED1
U 1 1 5BB5454C
P 3700 5350
F 0 "SW_LED1" H 3750 5450 50  0000 L CNN
F 1 "SW_Push" H 3700 5290 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H9.5mm" H 3700 5550 50  0001 C CNN
F 3 "" H 3700 5550 50  0001 C CNN
	1    3700 5350
	1    0    0    -1  
$EndComp
NoConn ~ 3200 2300
NoConn ~ 3200 2200
NoConn ~ 3200 2100
NoConn ~ 3200 2000
NoConn ~ 3200 950 
$Comp
L Tiny_Marquee-rescue:Conn_02x03_Odd_Even-Tiny_Marquee-rescue ICSP1
U 1 1 5BB55AFA
P 5850 2950
F 0 "ICSP1" H 5900 3150 50  0000 C CNN
F 1 "ICSP-Header" H 5900 2750 50  0000 C CNN
F 2 "MeineBib:AVR_ISP" H 5850 2950 50  0001 C CNN
F 3 "" H 5850 2950 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
Text Label 6700 2950 2    49   ~ 0
MOSI_LED_1_B
Text Label 5500 2850 0    49   ~ 0
MISO
Text Label 5500 2950 0    49   ~ 0
SCK
Text Label 5500 3050 0    49   ~ 0
RST
Text Label 3100 5050 0    49   ~ 0
RST
Text Label 3750 1250 2    49   ~ 0
MOSI_LED_1_B
Text Label 3550 1350 2    49   ~ 0
MISO
Text Label 3550 1450 2    49   ~ 0
SCK
$Comp
L power:GND #PWR017
U 1 1 5BB5779D
P 6350 3100
F 0 "#PWR017" H 6350 2850 50  0001 C CNN
F 1 "GND" H 6350 2950 50  0000 C CNN
F 2 "" H 6350 3100 50  0001 C CNN
F 3 "" H 6350 3100 50  0001 C CNN
	1    6350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5BB57A2C
P 6350 2800
F 0 "#PWR016" H 6350 2650 50  0001 C CNN
F 1 "+5V" H 6350 2940 50  0000 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Text Label 3750 1050 2    49   ~ 0
LED_1_R
Text Label 3750 1150 2    49   ~ 0
LED_1_G
Text Label 3550 2850 2    49   ~ 0
LED_2_R
Text Label 3550 3050 2    49   ~ 0
LED_2_G
Text Label 3550 3150 2    49   ~ 0
LED_2_B
Text Label 3550 2400 2    49   ~ 0
RST
Text Label 3550 1800 2    49   ~ 0
SW1
Text Label 3100 5350 0    49   ~ 0
SW1
$Comp
L power:GND #PWR015
U 1 1 5BC3819C
P 6050 6050
F 0 "#PWR015" H 6050 5800 50  0001 C CNN
F 1 "GND" H 6050 5900 50  0000 C CNN
F 2 "" H 6050 6050 50  0001 C CNN
F 3 "" H 6050 6050 50  0001 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BC381A5
P 5100 4800
F 0 "R2" V 5180 4800 50  0000 C CNN
F 1 "100R" V 5100 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 4800 50  0001 C CNN
F 3 "" H 5100 4800 50  0001 C CNN
	1    5100 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5BC381AB
P 5100 5100
F 0 "R3" V 5180 5100 50  0000 C CNN
F 1 "100R" V 5100 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 5100 50  0001 C CNN
F 3 "" H 5100 5100 50  0001 C CNN
	1    5100 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5BC381B1
P 5100 5400
F 0 "R4" V 5180 5400 50  0000 C CNN
F 1 "100R" V 5100 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 5400 50  0001 C CNN
F 3 "" H 5100 5400 50  0001 C CNN
	1    5100 5400
	0    1    1    0   
$EndComp
Text Label 8150 5050 0    49   ~ 0
LED_1_R
Text Label 8150 5350 0    49   ~ 0
LED_1_G
Text Label 8150 4750 0    49   ~ 0
MOSI_LED_1_B
Text Label 4600 4800 0    49   ~ 0
LED_2_R
Text Label 4600 5100 0    49   ~ 0
LED_2_G
Text Label 4600 5400 0    49   ~ 0
LED_2_B
$Comp
L Tiny_Marquee-rescue:Conn_01x04-Tiny_Marquee-rescue J_LED1
U 1 1 5BC39EEB
P 6750 4000
F 0 "J_LED1" V 6950 3950 50  0000 C CNN
F 1 "Conn_01x04" V 6850 3950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6750 4000 50  0001 C CNN
F 3 "" H 6750 4000 50  0001 C CNN
	1    6750 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR014
U 1 1 5BC3A6FC
P 6050 4050
F 0 "#PWR014" H 6050 3900 50  0001 C CNN
F 1 "+12V" H 6050 4190 50  0000 C CNN
F 2 "" H 6050 4050 50  0001 C CNN
F 3 "" H 6050 4050 50  0001 C CNN
	1    6050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BC3E4CC
P 5800 5650
F 0 "R7" V 5880 5650 50  0000 C CNN
F 1 "12K" V 5800 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 5650 50  0001 C CNN
F 3 "" H 5800 5650 50  0001 C CNN
	1    5800 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5BC3E5F0
P 5600 5650
F 0 "R6" V 5680 5650 50  0000 C CNN
F 1 "12K" V 5600 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 5650 50  0001 C CNN
F 3 "" H 5600 5650 50  0001 C CNN
	1    5600 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5BC3E67D
P 5400 5650
F 0 "R5" V 5480 5650 50  0000 C CNN
F 1 "12K" V 5400 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 5650 50  0001 C CNN
F 3 "" H 5400 5650 50  0001 C CNN
	1    5400 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 3000 8350 3000
Wire Wire Line
	8750 3000 8900 3000
Wire Wire Line
	8750 3200 8900 3200
Wire Wire Line
	8750 3400 8900 3400
Wire Wire Line
	8750 3850 8900 3850
Wire Wire Line
	8750 4050 8900 4050
Wire Wire Line
	8900 4250 8750 4250
Wire Wire Line
	8350 4250 8200 4250
Wire Wire Line
	8200 4050 8350 4050
Wire Wire Line
	8350 3850 8200 3850
Wire Wire Line
	7700 3850 7800 3850
Wire Wire Line
	7700 4050 7800 4050
Wire Wire Line
	7700 4250 7800 4250
Connection ~ 7700 4050
Wire Wire Line
	8150 5350 8700 5350
Wire Wire Line
	8150 5050 8700 5050
Wire Wire Line
	8150 4750 8700 4750
Wire Wire Line
	7700 3000 7800 3000
Wire Wire Line
	7700 3200 7800 3200
Wire Wire Line
	7800 3400 7700 3400
Connection ~ 7700 3200
Wire Wire Line
	8200 3200 8350 3200
Wire Wire Line
	8200 3400 8350 3400
Wire Wire Line
	9300 3400 9400 3400
Wire Wire Line
	9300 3200 9400 3200
Wire Wire Line
	9300 3000 9400 3000
Wire Wire Line
	9300 3850 9400 3850
Wire Wire Line
	9300 4050 9400 4050
Wire Wire Line
	9300 4250 9400 4250
Wire Wire Line
	9700 4250 9800 4250
Wire Wire Line
	9700 4050 10250 4050
Wire Wire Line
	9700 3850 10700 3850
Wire Wire Line
	9700 3400 9800 3400
Wire Wire Line
	9700 3200 10250 3200
Wire Wire Line
	9700 3000 10700 3000
Wire Wire Line
	1050 1050 1200 1050
Wire Wire Line
	1200 900  1200 950 
Wire Wire Line
	1300 950  1200 950 
Connection ~ 1200 950 
Wire Wire Line
	1200 3250 1300 3250
Wire Wire Line
	1200 3050 1200 3150
Wire Wire Line
	1300 3150 1200 3150
Connection ~ 1200 3250
Wire Wire Line
	1300 3050 1200 3050
Connection ~ 1200 3150
Wire Wire Line
	1300 1550 1200 1550
Wire Wire Line
	1200 1550 1200 1650
Wire Wire Line
	1200 1950 1200 1850
Wire Wire Line
	1200 1250 1300 1250
Connection ~ 1200 1050
Wire Wire Line
	4050 1550 4050 1650
Wire Wire Line
	3750 1700 3750 1650
Connection ~ 3750 1650
Wire Wire Line
	4000 1650 4050 1650
Connection ~ 4050 1650
Wire Wire Line
	3750 1900 3900 1900
Wire Wire Line
	3900 1950 3900 1900
Connection ~ 3900 1900
Wire Wire Line
	3200 1650 3750 1650
Wire Wire Line
	4050 1550 3200 1550
Wire Wire Line
	3750 1250 3200 1250
Wire Wire Line
	3200 1350 3550 1350
Wire Wire Line
	3550 1450 3200 1450
Wire Wire Line
	6150 3050 6350 3050
Wire Wire Line
	6150 2950 6700 2950
Wire Wire Line
	6150 2850 6350 2850
Wire Wire Line
	5500 2850 5650 2850
Wire Wire Line
	5500 2950 5650 2950
Wire Wire Line
	5500 3050 5650 3050
Wire Wire Line
	6350 2850 6350 2800
Wire Wire Line
	6350 3050 6350 3100
Wire Wire Line
	3200 2400 3550 2400
Wire Wire Line
	3200 2850 3550 2850
Wire Wire Line
	3200 3050 3550 3050
Wire Wire Line
	3200 3150 3550 3150
Wire Wire Line
	3200 1800 3550 1800
Wire Wire Line
	3100 5050 3400 5050
Wire Wire Line
	3400 4950 3400 5050
Connection ~ 3400 5050
Wire Wire Line
	3400 4600 3400 4650
Wire Wire Line
	3900 5050 4050 5050
Wire Wire Line
	4050 5050 4050 5350
Wire Wire Line
	3900 5350 4050 5350
Connection ~ 4050 5350
Wire Wire Line
	3500 5350 3100 5350
Wire Wire Line
	6950 5900 6950 5600
Wire Wire Line
	6050 5000 6050 5900
Wire Wire Line
	6500 5900 6500 5300
Wire Wire Line
	4600 5400 4950 5400
Wire Wire Line
	4600 5100 4950 5100
Wire Wire Line
	4600 4800 4950 4800
Wire Wire Line
	5250 4800 5400 4800
Wire Wire Line
	5250 5100 5600 5100
Wire Wire Line
	5250 5400 5800 5400
Wire Wire Line
	6500 4900 6500 4500
Wire Wire Line
	6950 4200 6950 5200
Wire Wire Line
	5800 5500 5800 5400
Connection ~ 5800 5400
Wire Wire Line
	5600 5500 5600 5100
Connection ~ 5600 5100
Wire Wire Line
	5400 5500 5400 4800
Connection ~ 5400 4800
Wire Wire Line
	5400 5900 5600 5900
Wire Wire Line
	5400 5900 5400 5800
Wire Wire Line
	5600 5800 5600 5900
Connection ~ 5600 5900
Wire Wire Line
	5800 5800 5800 5900
Connection ~ 5800 5900
Connection ~ 6050 5900
Connection ~ 6500 5900
Text Notes 4600 2250 0    60   ~ 0
ICSP
Text Notes 2500 3800 0    60   ~ 0
Inputs
Text Notes 900  700  0    60   ~ 0
Microcontroller
Text Notes 4550 3850 0    60   ~ 0
RGB External
Text Notes 7550 650  0    60   ~ 0
RGB Internal
Text Notes 2850 5450 0    39   ~ 0
LED setting
Text Notes 2850 5150 0    39   ~ 0
Optional reset button
Text Notes 4550 650  0    60   ~ 0
Power In
$Comp
L Connector:Barrel_Jack_Switch J6
U 1 1 5BC448AC
P 5300 1350
F 0 "J6" H 5300 1560 50  0000 C CNN
F 1 "Barrel_Jack" H 5300 1150 50  0000 C CNN
F 2 "MeineBib:DC_Barrel_Jack_Standing" H 5350 1310 50  0001 C CNN
F 3 "" H 5350 1310 50  0001 C CNN
	1    5300 1350
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:AP1117-50-Tiny_Marquee-rescue U2
U 1 1 5BC450C0
P 6300 1250
F 0 "U2" H 6300 1500 50  0000 C CNN
F 1 "AMS1117-5V" H 6100 1400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6300 1450 50  0001 C CNN
F 3 "" H 6400 1000 50  0001 C CNN
	1    6300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1250 5850 1250
Wire Wire Line
	6600 1250 6700 1250
Wire Wire Line
	6700 1150 6700 1250
Wire Wire Line
	5600 1350 5700 1350
Wire Wire Line
	5700 1350 5700 1450
Wire Wire Line
	5700 1550 5850 1550
Wire Wire Line
	6700 1500 6700 1550
Connection ~ 6300 1550
$Comp
L power:GND #PWR019
U 1 1 5BC45AB5
P 6700 1650
F 0 "#PWR019" H 6700 1400 50  0001 C CNN
F 1 "GND" H 6700 1500 50  0000 C CNN
F 2 "" H 6700 1650 50  0001 C CNN
F 3 "" H 6700 1650 50  0001 C CNN
	1    6700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5BC45BB0
P 6700 1150
F 0 "#PWR018" H 6700 1000 50  0001 C CNN
F 1 "+5V" H 6700 1290 50  0000 C CNN
F 2 "" H 6700 1150 50  0001 C CNN
F 3 "" H 6700 1150 50  0001 C CNN
	1    6700 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 5BC45C5B
P 5850 1150
F 0 "#PWR013" H 5850 1000 50  0001 C CNN
F 1 "+12V" H 5850 1290 50  0000 C CNN
F 2 "" H 5850 1150 50  0001 C CNN
F 3 "" H 5850 1150 50  0001 C CNN
	1    5850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1450 5700 1450
Connection ~ 5700 1450
Connection ~ 5850 1250
Connection ~ 6700 1550
Connection ~ 6700 1250
Wire Wire Line
	5850 1150 5850 1250
$Comp
L Device:CP1_Small C6
U 1 1 5BC4726C
P 6700 1400
F 0 "C6" H 6710 1470 50  0000 L CNN
F 1 "22uF" H 6500 1300 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H_Pad1.50x2.35mm_HandSolder" H 6700 1400 50  0001 C CNN
F 3 "" H 6700 1400 50  0001 C CNN
	1    6700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5BC479E9
P 5850 1400
F 0 "C5" H 5860 1470 50  0000 L CNN
F 1 "100uF" H 5900 1300 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-15_Kemet-W_Pad2.25x2.55mm_HandSolder" H 5850 1400 50  0001 C CNN
F 3 "" H 5850 1400 50  0001 C CNN
	1    5850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1500 5850 1550
Connection ~ 5850 1550
$Comp
L Device:C_Small C1
U 1 1 5BC48E38
P 1050 1250
F 0 "C1" H 1060 1320 50  0000 L CNN
F 1 "100nF" H 800 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 1250 50  0001 C CNN
F 3 "" H 1050 1250 50  0001 C CNN
	1    1050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1050 1050 1150
$Comp
L power:GND #PWR02
U 1 1 5BC49190
P 1050 1400
F 0 "#PWR02" H 1050 1150 50  0001 C CNN
F 1 "GND" H 1050 1250 50  0000 C CNN
F 2 "" H 1050 1400 50  0001 C CNN
F 3 "" H 1050 1400 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1400 1050 1350
$Comp
L Tiny_Marquee-rescue:Conn_01x04-Tiny_Marquee-rescue J_Serial1
U 1 1 5BC49C47
P 4000 2550
F 0 "J_Serial1" V 4200 2500 50  0000 C CNN
F 1 "Conn_01x04" V 4100 2500 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4000 2550 50  0001 C CNN
F 3 "" H 4000 2550 50  0001 C CNN
	1    4000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2550 3800 2550
Wire Wire Line
	3800 2650 3200 2650
Wire Wire Line
	3800 2450 3750 2450
Wire Wire Line
	3750 2450 3750 2400
Wire Wire Line
	3800 2750 3750 2750
Wire Wire Line
	3750 2750 3750 2800
$Comp
L power:GND #PWR010
U 1 1 5BC4A1BC
P 3750 2800
F 0 "#PWR010" H 3750 2550 50  0001 C CNN
F 1 "GND" H 3750 2650 50  0000 C CNN
F 2 "" H 3750 2800 50  0001 C CNN
F 3 "" H 3750 2800 50  0001 C CNN
	1    3750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5BC4A2CF
P 3750 2400
F 0 "#PWR09" H 3750 2250 50  0001 C CNN
F 1 "+5V" H 3750 2540 50  0000 C CNN
F 2 "" H 3750 2400 50  0001 C CNN
F 3 "" H 3750 2400 50  0001 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
Text Label 3550 2550 2    49   ~ 0
RXD
Text Label 3550 2650 2    49   ~ 0
TXD
Text Notes 3850 2950 0    39   ~ 0
Optional serial\nmonitor port
Text Notes 4550 4050 0    39   ~ 0
Optional Transistors for \nexternal 12 V RGB-Stripe\n
Text Notes 7550 750  0    39   ~ 0
Transistors and internal LED for marquee backlight
Text Notes 4600 2350 0    39   ~ 0
Programming port
$Comp
L Tiny_Marquee-rescue:Conn_01x01-Tiny_Marquee-rescue J3
U 1 1 5BC4C55E
P 1450 4200
F 0 "J3" H 1550 4200 50  0000 C CNN
F 1 "12 V" H 1700 4200 50  0000 C CNN
F 2 "EigeneModule:PinheaderOwnWithoutSilk" H 1450 4200 50  0001 C CNN
F 3 "" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:Conn_01x01-Tiny_Marquee-rescue J4
U 1 1 5BC4C968
P 1450 4300
F 0 "J4" H 1550 4300 50  0000 C CNN
F 1 "5 V" H 1700 4300 50  0000 C CNN
F 2 "EigeneModule:PinheaderOwnWithoutSilk" H 1450 4300 50  0001 C CNN
F 3 "" H 1450 4300 50  0001 C CNN
	1    1450 4300
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:Conn_01x01-Tiny_Marquee-rescue J5
U 1 1 5BC4CAFB
P 1450 4400
F 0 "J5" H 1550 4400 50  0000 C CNN
F 1 "GND" H 1700 4400 50  0000 C CNN
F 2 "EigeneModule:PinheaderOwnWithoutSilk" H 1450 4400 50  0001 C CNN
F 3 "" H 1450 4400 50  0001 C CNN
	1    1450 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5BC4CE33
P 950 4100
F 0 "#PWR01" H 950 3950 50  0001 C CNN
F 1 "+5V" H 950 4240 50  0000 C CNN
F 2 "" H 950 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 5BC4D072
P 1150 4100
F 0 "#PWR03" H 1150 3950 50  0001 C CNN
F 1 "+12V" H 1150 4240 50  0000 C CNN
F 2 "" H 1150 4100 50  0001 C CNN
F 3 "" H 1150 4100 50  0001 C CNN
	1    1150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4200 1150 4200
Wire Wire Line
	1150 4200 1150 4100
Wire Wire Line
	1250 4300 950  4300
Wire Wire Line
	950  4300 950  4100
$Comp
L power:GND #PWR04
U 1 1 5BC4DA70
P 1150 4500
F 0 "#PWR04" H 1150 4250 50  0001 C CNN
F 1 "GND" H 1150 4350 50  0000 C CNN
F 2 "" H 1150 4500 50  0001 C CNN
F 3 "" H 1150 4500 50  0001 C CNN
	1    1150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4400 1150 4400
Wire Wire Line
	1150 4400 1150 4500
Text Notes 550  3800 0    60   ~ 0
Power Headers
$Comp
L Tiny_Marquee-rescue:Conn_01x01-Tiny_Marquee-rescue J1
U 1 1 5BC4ECCD
P 1000 2300
F 0 "J1" H 1100 2300 50  0000 C CNN
F 1 "ADC6" H 1300 2300 50  0000 C CNN
F 2 "EigeneModule:PinheaderOwnWithoutSilk" H 1000 2300 50  0001 C CNN
F 3 "" H 1000 2300 50  0001 C CNN
	1    1000 2300
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:Conn_01x01-Tiny_Marquee-rescue J2
U 1 1 5BC4F125
P 1000 2400
F 0 "J2" H 1100 2400 50  0000 C CNN
F 1 "ADC7" H 1300 2400 50  0000 C CNN
F 2 "EigeneModule:PinheaderOwnWithoutSilk" H 1000 2400 50  0001 C CNN
F 3 "" H 1000 2400 50  0001 C CNN
	1    1000 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 2300 1300 2300
Wire Wire Line
	1300 2400 1200 2400
Text Notes 600  2550 0    39   ~ 0
Optional ADC headers
Wire Wire Line
	6850 4200 6850 4500
Wire Wire Line
	6850 4500 6500 4500
Wire Wire Line
	6050 4600 6050 4400
Wire Wire Line
	6050 4400 6750 4400
Wire Wire Line
	6750 4400 6750 4200
Wire Wire Line
	6050 4050 6050 4300
Wire Wire Line
	6050 4300 6650 4300
Wire Wire Line
	6650 4300 6650 4200
Wire Wire Line
	7700 4050 7700 4250
Wire Wire Line
	7700 3000 7700 3200
Wire Wire Line
	7700 3200 7700 3400
Wire Wire Line
	1200 950  1200 1050
Wire Wire Line
	1200 3250 1200 3350
Wire Wire Line
	1200 3150 1200 3250
Wire Wire Line
	1200 1050 1300 1050
Wire Wire Line
	1200 1050 1200 1250
Wire Wire Line
	3750 1650 3800 1650
Wire Wire Line
	4050 1650 4050 1700
Wire Wire Line
	3900 1900 4050 1900
Wire Wire Line
	3400 5050 3500 5050
Wire Wire Line
	5800 5400 6650 5400
Wire Wire Line
	5600 5100 6200 5100
Wire Wire Line
	5400 4800 5750 4800
Wire Wire Line
	5600 5900 5800 5900
Wire Wire Line
	5800 5900 6050 5900
Wire Wire Line
	6050 5900 6050 6050
Wire Wire Line
	6050 5900 6500 5900
Wire Wire Line
	6500 5900 6950 5900
Wire Wire Line
	6300 1550 6700 1550
Wire Wire Line
	5700 1450 5700 1550
Wire Wire Line
	5850 1250 6000 1250
Wire Wire Line
	5850 1250 5850 1300
Wire Wire Line
	6700 1550 6700 1650
Wire Wire Line
	6700 1250 6700 1300
Wire Wire Line
	5850 1550 6300 1550
Wire Wire Line
	4050 5350 4050 5550
NoConn ~ 3200 1900
$Comp
L Tiny_Marquee-rescue:FDN337N-MeineBibli-Tiny_Marquee-rescue Q1
U 1 1 5C712E02
P 5950 4800
F 0 "Q1" H 6155 4846 50  0000 L CNN
F 1 "FDN337N" H 6155 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6200 4725 50  0001 L CIN
F 3 "" H 5950 4800 50  0001 L CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:FDN337N-MeineBibli-Tiny_Marquee-rescue Q2
U 1 1 5C712EC2
P 6400 5100
F 0 "Q2" H 6605 5146 50  0000 L CNN
F 1 "FDN337N" H 6605 5055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6650 5025 50  0001 L CIN
F 3 "" H 6400 5100 50  0001 L CNN
	1    6400 5100
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:FDN337N-MeineBibli-Tiny_Marquee-rescue Q3
U 1 1 5C712F46
P 6850 5400
F 0 "Q3" H 7055 5446 50  0000 L CNN
F 1 "FDN337N" H 7055 5355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 5325 50  0001 L CIN
F 3 "" H 6850 5400 50  0001 L CNN
	1    6850 5400
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:FDN337N-MeineBibli-Tiny_Marquee-rescue Q4
U 1 1 5C71446B
P 9700 4750
F 0 "Q4" H 9905 4796 50  0000 L CNN
F 1 "FDN337N" H 9905 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9950 4675 50  0001 L CIN
F 3 "" H 9700 4750 50  0001 L CNN
	1    9700 4750
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:FDN337N-MeineBibli-Tiny_Marquee-rescue Q5
U 1 1 5C714AC5
P 10150 5050
F 0 "Q5" H 10355 5096 50  0000 L CNN
F 1 "FDN337N" H 10355 5005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10400 4975 50  0001 L CIN
F 3 "" H 10150 5050 50  0001 L CNN
	1    10150 5050
	1    0    0    -1  
$EndComp
$Comp
L Tiny_Marquee-rescue:FDN337N-MeineBibli-Tiny_Marquee-rescue Q6
U 1 1 5C714B3B
P 10600 5350
F 0 "Q6" H 10805 5396 50  0000 L CNN
F 1 "FDN337N" H 10805 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10850 5275 50  0001 L CIN
F 3 "" H 10600 5350 50  0001 L CNN
	1    10600 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5C746083
P 9550 5600
F 0 "R13" V 9630 5600 50  0000 C CNN
F 1 "12K" V 9550 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 5600 50  0001 C CNN
F 3 "" H 9550 5600 50  0001 C CNN
	1    9550 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5C76A52D
P 9350 5600
F 0 "R12" V 9430 5600 50  0000 C CNN
F 1 "12K" V 9350 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9280 5600 50  0001 C CNN
F 3 "" H 9350 5600 50  0001 C CNN
	1    9350 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5C76A5AB
P 9150 5600
F 0 "R11" V 9230 5600 50  0000 C CNN
F 1 "12K" V 9150 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9080 5600 50  0001 C CNN
F 3 "" H 9150 5600 50  0001 C CNN
	1    9150 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5C76A7FF
P 8850 5350
F 0 "R10" V 8930 5350 50  0000 C CNN
F 1 "100R" V 8850 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 5350 50  0001 C CNN
F 3 "" H 8850 5350 50  0001 C CNN
	1    8850 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 5350 9550 5450
Wire Wire Line
	9950 5050 9350 5050
Wire Wire Line
	9350 5050 9350 5450
Wire Wire Line
	9500 4750 9150 4750
Wire Wire Line
	9150 4750 9150 5450
$Comp
L Device:R R9
U 1 1 5C78E467
P 8850 5050
F 0 "R9" V 8930 5050 50  0000 C CNN
F 1 "100R" V 8850 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 5050 50  0001 C CNN
F 3 "" H 8850 5050 50  0001 C CNN
	1    8850 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5C78E4E7
P 8850 4750
F 0 "R8" V 8930 4750 50  0000 C CNN
F 1 "100R" V 8850 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 4750 50  0001 C CNN
F 3 "" H 8850 4750 50  0001 C CNN
	1    8850 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 4750 9150 4750
Connection ~ 9150 4750
Wire Wire Line
	9000 5050 9350 5050
Connection ~ 9350 5050
Wire Wire Line
	9000 5350 9550 5350
Connection ~ 9550 5350
Wire Wire Line
	9550 5350 10400 5350
Wire Wire Line
	9150 5750 9150 5900
Wire Wire Line
	9150 5900 9350 5900
Wire Wire Line
	10700 5550 10700 5900
Wire Wire Line
	10250 5250 10250 5900
Connection ~ 10250 5900
Wire Wire Line
	10250 5900 10700 5900
Wire Wire Line
	9800 4950 9800 5900
Connection ~ 9800 5900
Wire Wire Line
	9800 5900 10250 5900
Wire Wire Line
	9550 5750 9550 5900
Connection ~ 9550 5900
Wire Wire Line
	9550 5900 9800 5900
Wire Wire Line
	9350 5750 9350 5900
Connection ~ 9350 5900
Wire Wire Line
	9350 5900 9550 5900
Wire Wire Line
	9800 6000 9800 5900
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D1
U 1 1 5C880EE2
P 8000 1500
F 0 "D1" H 8000 1870 50  0000 C CNN
F 1 "LED_RGB" H 8000 1150 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8000 1450 50  0001 C CNN
F 3 "" H 8000 1450 50  0001 C CNN
	1    8000 1500
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D2
U 1 1 5C880EE8
P 8550 1500
F 0 "D2" H 8550 1870 50  0000 C CNN
F 1 "LED_RGB" H 8550 1150 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8550 1450 50  0001 C CNN
F 3 "" H 8550 1450 50  0001 C CNN
	1    8550 1500
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D3
U 1 1 5C880EEE
P 9100 1500
F 0 "D3" H 9100 1870 50  0000 C CNN
F 1 "LED_RGB" H 9100 1150 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 9100 1450 50  0001 C CNN
F 3 "" H 9100 1450 50  0001 C CNN
	1    9100 1500
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D4
U 1 1 5C880EF4
P 8000 2350
F 0 "D4" H 8000 2720 50  0000 C CNN
F 1 "LED_RGB" H 8000 2000 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8000 2300 50  0001 C CNN
F 3 "" H 8000 2300 50  0001 C CNN
	1    8000 2350
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D5
U 1 1 5C880EFA
P 8550 2350
F 0 "D5" H 8550 2720 50  0000 C CNN
F 1 "LED_RGB" H 8550 2000 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8550 2350
	-1   0    0    1   
$EndComp
$Comp
L Tiny_Marquee-rescue:LED_RGB_Fixed_5050-MeineBibli-Tiny_Marquee-rescue D6
U 1 1 5C880F00
P 9100 2350
F 0 "D6" H 9100 2720 50  0000 C CNN
F 1 "LED_RGB" H 9100 2000 50  0000 C CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 9100 2300 50  0001 C CNN
F 3 "" H 9100 2300 50  0001 C CNN
	1    9100 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:R RV_2
U 1 1 5C880F06
P 9550 2550
F 0 "RV_2" V 9630 2550 50  0000 C CNN
F 1 "150R" V 9550 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2550 50  0001 C CNN
F 3 "" H 9550 2550 50  0001 C CNN
	1    9550 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_6
U 1 1 5C880F0C
P 9550 2350
F 0 "RV_6" V 9630 2350 50  0000 C CNN
F 1 "220R" V 9550 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2350 50  0001 C CNN
F 3 "" H 9550 2350 50  0001 C CNN
	1    9550 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_10
U 1 1 5C880F12
P 9550 2150
F 0 "RV_10" V 9630 2150 50  0000 C CNN
F 1 "150R" V 9550 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 2150 50  0001 C CNN
F 3 "" H 9550 2150 50  0001 C CNN
	1    9550 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_9
U 1 1 5C880F18
P 9550 1300
F 0 "RV_9" V 9630 1300 50  0000 C CNN
F 1 "150R" V 9550 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 1300 50  0001 C CNN
F 3 "" H 9550 1300 50  0001 C CNN
	1    9550 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_5
U 1 1 5C880F1E
P 9550 1500
F 0 "RV_5" V 9630 1500 50  0000 C CNN
F 1 "220R" V 9550 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 1500 50  0001 C CNN
F 3 "" H 9550 1500 50  0001 C CNN
	1    9550 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R RV_1
U 1 1 5C880F24
P 9550 1700
F 0 "RV_1" V 9630 1700 50  0000 C CNN
F 1 "150R" V 9550 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 1700 50  0001 C CNN
F 3 "" H 9550 1700 50  0001 C CNN
	1    9550 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 1300 8350 1300
Wire Wire Line
	8750 1300 8900 1300
Wire Wire Line
	8750 1500 8900 1500
Wire Wire Line
	8750 1700 8900 1700
Wire Wire Line
	8750 2150 8900 2150
Wire Wire Line
	8750 2350 8900 2350
Wire Wire Line
	8900 2550 8750 2550
Wire Wire Line
	8350 2550 8200 2550
Wire Wire Line
	8200 2350 8350 2350
Wire Wire Line
	8350 2150 8200 2150
Wire Wire Line
	7700 1100 7700 1300
Wire Wire Line
	7700 2150 7800 2150
Wire Wire Line
	7700 2350 7800 2350
Wire Wire Line
	7700 2550 7800 2550
Connection ~ 7700 2350
Wire Wire Line
	7700 1300 7800 1300
Wire Wire Line
	7700 1500 7800 1500
Connection ~ 7700 1300
Wire Wire Line
	7800 1700 7700 1700
Connection ~ 7700 1500
Wire Wire Line
	8200 1500 8350 1500
Wire Wire Line
	8200 1700 8350 1700
Wire Wire Line
	9300 1700 9400 1700
Wire Wire Line
	9300 1500 9400 1500
Wire Wire Line
	9300 1300 9400 1300
Wire Wire Line
	9300 2150 9400 2150
Wire Wire Line
	9300 2350 9400 2350
Wire Wire Line
	9300 2550 9400 2550
Wire Wire Line
	9700 2350 10250 2350
Wire Wire Line
	9700 2150 10700 2150
Wire Wire Line
	9700 1700 9800 1700
Wire Wire Line
	9700 1500 10250 1500
Wire Wire Line
	9700 1300 10700 1300
Wire Wire Line
	7700 2150 7700 2350
Wire Wire Line
	7700 1300 7700 1500
Wire Wire Line
	7700 1500 7700 1700
Wire Wire Line
	9700 2550 9800 2550
Wire Wire Line
	10700 3850 10700 5150
Wire Wire Line
	10250 4050 10250 4850
Wire Wire Line
	9800 4250 9800 4550
Wire Wire Line
	7700 3850 7700 4050
Wire Wire Line
	7700 3850 7700 3400
Connection ~ 7700 3850
Connection ~ 7700 3400
Wire Wire Line
	7700 2350 7700 2550
Connection ~ 7700 3000
Connection ~ 7700 2550
Wire Wire Line
	7700 2550 7700 3000
Wire Wire Line
	7700 2150 7700 1700
Connection ~ 7700 2150
Connection ~ 7700 1700
Wire Wire Line
	9800 4250 9800 3400
Connection ~ 9800 4250
Wire Wire Line
	9800 3400 9800 2550
Connection ~ 9800 3400
Wire Wire Line
	9800 2550 9800 1700
Connection ~ 9800 2550
Wire Wire Line
	10250 1500 10250 2350
Wire Wire Line
	10250 2350 10250 3200
Connection ~ 10250 2350
Wire Wire Line
	10250 4050 10250 3200
Connection ~ 10250 4050
Connection ~ 10250 3200
Wire Wire Line
	10700 3850 10700 3000
Connection ~ 10700 3850
Wire Wire Line
	10700 3000 10700 2150
Connection ~ 10700 3000
Wire Wire Line
	10700 2150 10700 1300
Connection ~ 10700 2150
Wire Notes Line
	11200 6500 11200 500 
Wire Notes Line
	7500 500  7500 6500
Wire Notes Line
	4500 500  4500 6500
Wire Notes Line
	500  3700 7500 3700
Wire Notes Line
	500  500  11200 500 
Wire Notes Line
	7500 2100 4500 2100
Wire Notes Line
	500  6500 11200 6500
Wire Notes Line
	500  500  500  6500
Wire Notes Line
	2450 6500 2450 3700
Wire Notes Line
	2450 4800 500  4800
$Comp
L Mechanical:MountingHole H1
U 1 1 5C6D9FF7
P 700 5100
F 0 "H1" H 800 5146 50  0000 L CNN
F 1 "MountingHole" H 800 5055 50  0000 L CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 700 5100 50  0001 C CNN
F 3 "~" H 700 5100 50  0001 C CNN
	1    700  5100
	1    0    0    -1  
$EndComp
Text Notes 550  4950 0    60   ~ 0
Mechanical
$Comp
L Mechanical:MountingHole H2
U 1 1 5C704A92
P 700 5350
F 0 "H2" H 800 5396 50  0000 L CNN
F 1 "MountingHole" H 800 5305 50  0000 L CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 700 5350 50  0001 C CNN
F 3 "~" H 700 5350 50  0001 C CNN
	1    700  5350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C704B2A
P 700 5600
F 0 "H3" H 800 5646 50  0000 L CNN
F 1 "MountingHole" H 800 5555 50  0000 L CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 700 5600 50  0001 C CNN
F 3 "~" H 700 5600 50  0001 C CNN
	1    700  5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C704BC4
P 700 5850
F 0 "H4" H 800 5896 50  0000 L CNN
F 1 "MountingHole" H 800 5805 50  0000 L CNN
F 2 "MeineBib:EigenesMountingHole_2.7mm_M2.5" H 700 5850 50  0001 C CNN
F 3 "~" H 700 5850 50  0001 C CNN
	1    700  5850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5C721EAC
P 1600 5600
F 0 "H5" H 1700 5646 50  0000 L CNN
F 1 "Symbol_Pent" H 1700 5555 50  0000 L CNN
F 2 "MeineBib:PentThin" H 1600 5600 50  0001 C CNN
F 3 "~" H 1600 5600 50  0001 C CNN
	1    1600 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5CB8B984
P 1600 5100
F 0 "H6" H 1700 5146 50  0000 L CNN
F 1 "Symbol" H 1700 5055 50  0000 L CNN
F 2 "Symbol:Symbol_KiCAD-Logo_CopperAndSilkScreenTop" H 1600 5100 50  0001 C CNN
F 3 "~" H 1600 5100 50  0001 C CNN
	1    1600 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5CB8BA48
P 1600 5350
F 0 "H7" H 1700 5396 50  0000 L CNN
F 1 "Symbol_Binary6" H 1700 5305 50  0000 L CNN
F 2 "MeineBib:Binary_6_v0.1" H 1600 5350 50  0001 C CNN
F 3 "~" H 1600 5350 50  0001 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1150 3750 1150
Wire Wire Line
	3200 1050 3750 1050
NoConn ~ 3200 2750
NoConn ~ 3200 2950
NoConn ~ 3200 3250
Text Notes 750  7600 0    60   ~ 0
Arduino Pinning\nLED_1_R - D9\nLED_1_G - D10\nLED_1_B - D11\n\nLED_2_R - D3\nLED_2_G - D5\nLED_2_B - D6\n\nSW1 - A0
$EndSCHEMATC
