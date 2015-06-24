//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 91
clear;
clc;

//Given Data

Rl=1D3;//Load resistance in ohms
esf=50;//Input signal frequncy in hertz
RF=4/100;//Ripple Factor

//Solution

//Using figure E3.6
//From right angled triangle pqr

C=1/(esf*Rl*2*RF)*10^6;//Capacitance in micro faraday;

printf("The size of filter capacitor is C = %d μF",C);

//Error in textbook as ripple factor is already given and capacitance is calculated
