//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 91
clear;
clc;

//Given Data

Rl=200;//Load resistance in ohms
esf=50;//Input signal frequncy in hertz
RF=5/100;//Ripple Factor

//Solution

C=1/(esf*Rl*2*RF)*10^6;//Capacitance in micro faraday;

printf("The size of shunt capacitor is C = %d μF",C);
