//Chapter 4
//Example 4-4
//DesignUsingVutAndVlt 
//Page 96
clear;clc;
//Given
Vut = 12 ; Vlt = 8 ; //Upper and Lower Threshold Voltages 
Vsatp = 15 ; Vsatm = -15 ;// Saturation Voltages
R = 10*10^3 ;//Choosing R
//Design
Vh = Vut - Vlt ; // Hysteresis Voltage 
Vctr = (Vut + Vlt)/2;//Center Voltage
n = (Vsatp - Vsatm)/Vh ; // Resistor Factor
Vref = Vctr / (1 + (1/n)); //Reference Voltage
Resistance = n * R;
printf ( "\n\n Hysteresis Voltage = %.4f V \n\n",Vh )
printf ( "\n\n Center Voltage = %.4f V \n\n", Vctr )
printf ( "\n\n Resistor Factor = %.4f \n\n" , n )
printf ( "\n\n Reference Voltage = %.4f \n\n", Vref)
printf ( "\n\n Feedback resistor = %.4f \n\n", Resistance)