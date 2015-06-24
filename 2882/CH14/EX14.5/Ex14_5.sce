//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 423
clear;
clc;

//Given

Ad=15000;//differential gain
Ac=15;//common mode gain

//Solution

CMRR=Ad/Ac;//common mode rejection ratio
CMRR_dB=20*log10(CMRR);//common mode rejection ratio in dB units
printf("(CMRR)dB = %.f dB",CMRR_dB);
