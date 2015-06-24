//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 346
clear;
clc;

//Given

A0=200;//open loop midband gain
B=0.05;//feedback factor beta
fH=100D3;//open loop higher cutoff frequency in hertz

//Solution

fHfb=fH*(1+A0*B);//closed loop higher cutoff frequency in hertz
printf("Closed loop higher cutoff frequency (fH)fb = %.1f MHz\n ",fHfb/10^6);
