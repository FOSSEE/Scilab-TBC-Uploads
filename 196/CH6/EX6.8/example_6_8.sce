//Chapter 6
//Example 6-8
//DesignOnSawtoothWaveGenerator 
//Page 163
clear;clc;
//Design a voltage divider to give voltage reference 10 V
//Here Ri = 10 KiloOhm and C = 0.1microfarad
//The Circuit will be as shown below
xcos('Figure6_8.xcos');
//Checking Frequency value
Ri = 10*10^3 ;
Ci = 0.1*10^-6 ;
Ei = 1 ;
Vref = 10 ;
f = Ei / (Ri*Ci*Vref) ;
printf ( "\n\n Frequency is %.4f Hz ", f )