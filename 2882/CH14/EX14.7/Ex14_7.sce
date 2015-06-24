//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 428 and 429
clear;
clc;

//Given
//Figure E 14.7

Av_cl=50;//closed loop voltage gain
Ri=2.7D3;//resistance Ri in ohms

//Solution

Rf=Av_cl*Ri;//feedback resistance in ohms
printf("Feedback resistor Rf = %d kilo-ohms",Rf/10^3);
