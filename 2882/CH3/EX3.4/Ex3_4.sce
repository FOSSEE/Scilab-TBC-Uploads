//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 90
clear;
clc;

//Given Data

Rl=2D3;//Load resistance in ohms
esp=50;//Input signal voltage magnitude in volts peak
esf=314/(2*%pi);//Input signal frequncy in hertz
Vr_to_Vdc=6/100;//Ratio of peak to peak ripple voltage to d.c. output voltage

//Solution

//Using figure E3.4
//From right angled triangle pqr

C=1/(esf*Rl*Vr_to_Vdc)*10^6;//Capacitance in micro faraday;

printf("The size of filter capacitor is C = %.1f μF",C);

//Decimal errors in textbook due to approximations
