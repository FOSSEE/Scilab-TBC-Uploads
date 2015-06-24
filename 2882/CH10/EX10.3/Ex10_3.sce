//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 330 and 331
clear;
clc;

//Given

A=500;//open loop gain
B=0.1;//feedback factor beta
dA_to_A=10/100;//variation in open loop gain

//Solution

dAfb_to_Afb=dA_to_A*1/(A*B);//variation in closed loop gain
printf("Percentage variation in closed loop gain = %.1f %%",dAfb_to_Afb*100);
