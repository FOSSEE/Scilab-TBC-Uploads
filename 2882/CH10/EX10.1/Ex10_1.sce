//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 330
clear;
clc;

//Given

Vi=2D-3;//input voltage in volts
Vo_dash=10;//output voltage with feedback in volts
BVo_dash=200D-3;//feedback voltage in volts

//Solution

A=Vo_dash/Vi;//open loop gain
Afb=Vo_dash/(Vi+BVo_dash);//closed loop gain
B=1/Afb-1/A;//feedback gain beta
printf("β = %.2f",B);
