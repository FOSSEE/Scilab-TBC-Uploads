//Chapter 4
//Example 4-6
//DesignOnInvertingVoltageLevelDetector 
//Page 100
clear;clc;
//Given
Vut = 13.5 ; Vlt = 10.5 ; //Upper and Lower Threshold Voltages
Vref = -15 ; // Reference Voltage
Vsatp = 13 ; Vsatm = -13;//Saturation Voltages 
R = 10*10^3 ; // Input Resistance
Vctr = (Vut + Vlt)/2;
Vh = Vut - Vlt ;
m = -(Vref / Vctr);
Resistance = m * R ;
n = (Vsatp-Vsatm)/Vh ;
Resistance1 = n * R ;
printf (" \n\n Hysteresis Voltage = %.4f ", Vh )
printf (" \n\n Center Voltage = %.4f ", Vctr )
printf (" \n\n Resistor mR = %.4f ", Resistance)
printf (" \n\n Resistor nR = %.4f ", Resistance1) 