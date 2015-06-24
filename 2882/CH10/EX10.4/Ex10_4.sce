//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 331
clear;
clc;

//Given

A=70;//open loop gain
B=0.1;//feedback factor beta
A_dash=A+0.05*A;//open loop gain increases by 5%

//Solution

Afb=A/(1+A*B);//closed loop gain at A open loop gain
Afb_dash=A_dash/(1+A_dash*B);//closed loop gain at A_dash open loop gain
PC=(Afb_dash-Afb)/Afb*100;//percentage change in closed loop gain
printf("Percentage change in closed loop gain = %.1f %%",PC);

//approximations taken in textbook
