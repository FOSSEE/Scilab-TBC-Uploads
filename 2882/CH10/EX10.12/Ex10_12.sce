//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 345
clear;
clc;

//Given

A0=200;//open loop midband gain
B=0.05;//feedback factor beta

//Solution

Afb=A0/(1+A0*B);//closed loop midband gain
printf("Voltage gain of the circuit (Av)fb = %.2f\n ",Afb);
