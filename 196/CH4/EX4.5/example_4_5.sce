//Chapter 4
//Example 4-5
//designInvertingVoltageDetector 
//Page 97
clear;clc;
//Given
Vsatp = 15 ; Vsatm = -15 ;// Saturation Voltages
Vh = 4 ; //Hysteresis Voltage
Vctr = 10 ; //Center voltage
n = ((Vsatp - Vsatm)/Vh)-1 ;
R = 10*10^3 ;//Input Resistance
Vref = ((n + 1)*(Vctr))/n ; // Reference Voltage
Resistance = n * R // Feedback Resistance
printf (" \n\n Resistance Factor = %.4f ", n)
printf (" \n\n Reference Voltage = %.4f ", Vref)
printf (" \n\n Feedback Resistance = %.4f ", Resistance)
xcos('Figure4_5.xcos');
