//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 345 and 346
clear;
clc;

//Given

A0=200;//open loop midband gain
B=0.05;//feedback factor beta
fL=25;//open loop lower cutoff frequency in hertz

//Solution

fLfb=fL/(1+A0*B);//closed loop lower cutoff frequency in hertz
printf("Closed loop lower cutoff frequency (fL)fb = %.2f Hz\n ",fLfb);
