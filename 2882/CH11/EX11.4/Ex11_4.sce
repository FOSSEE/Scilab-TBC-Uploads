//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 361
clear;
clc;

//Given

R=4.7D3;//R1,R2,R3 resistances in RC filter circuit in ohms
C=2.2D-9;//C1,C2,C3 resistances in RC filter circuit in farads

//Solution

f0=1/(2*%pi*R*C*sqrt(6));//frequency of oscillation in hertz
printf("Frequency of oscillation f0 = %.3f kHz",f0/10^3);
