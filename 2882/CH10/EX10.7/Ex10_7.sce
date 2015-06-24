//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 333
clear;
clc;

//Given

A=250;//mid frequency open loop gain
f1=100;//open loop lower cutoff frequency in hertz
f2=25D3;//open loop higher cutoff frequency in hertz
B=0.025;//feedback gain beta
D2=0.02;//second harmonic distortion

//Solution

Afb=A/(1+A*B);//closed loop gain
f1_dash=f1/(1+A*B);//closed loop lower cutoff frequency in hertz
f2_dash=f2*(1+A*B);//closed loop higher cutoff frequency in hertz
BW=f2_dash-f1_dash;//closed loop bandwidth
printf("Closed loop gain Afb = %.2f\n ",Afb);
printf("Closed loop bandwidth BW = %.2f kHz",BW/10^3);
