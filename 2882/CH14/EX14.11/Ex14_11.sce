//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 435 and 436
clear;
clc;

//Given
//Figure 14.21

R=12D3;//resistances R1,R2,R3 in RC network in ohms
C=0.001D-6;//capacitances C1,C2,C3 in RC network in ohms
A=29;//gain for oscillator operation

//Solution

fr=1/(2*%pi*R*C*sqrt(6));//frequency of oscillations in hertz
Rf=A*R;//feedback resistance in ohms
printf("Frequency of oscillations fr = %.2f kHz\n ",fr/10^3);
printf("Feedback resistance Rf = %.f kilo-ohms\n ",Rf/10^3);
