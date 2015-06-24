//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 361
clear;
clc;

//Given

R=4.7D3;//R1,R2,R3 resistances in RC filter circuit in ohms
C=4.7D-9;//C1,C2,C3 resistances in RC filter circuit in farads
A=29;//voltage gain of RC phase shift oscillator

//Solution

f0=1/(2*%pi*R*C*sqrt(6));//frequency of oscillation in hertz
printf("Frequency of oscillation f0 = %.2f kHz\n ",f0/10^3);
Rf=A*R;//feedback resistance in ohms
printf("Feedback resistance Rf = %.1f kilo-ohms",Rf/10^3);
