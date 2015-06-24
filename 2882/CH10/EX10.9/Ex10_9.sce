//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 343
clear;
clc;

//Given
//Figure 10.16

RD=4.7D3;//drain resistance in ohms
Rs=1D3;//source resistance in ohms
RF=10D6;//feedback resistance in ohms
gm=2D-3;//transconductance in Siemens

//Solution

A=-gm*RD;//open loop gain
Afb=A*RF/(RF-A*Rs);//closed loop gain
printf("Gain without feedback A = %.1f\n ",A);
printf("Gain with feedback Afb = %.1f",Afb);
