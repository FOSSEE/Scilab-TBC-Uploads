//Calculate CMRR in dB
clear;
clc;
//soltion
//given

Ad=100;          //differential mode gain
Ac=0.01;         //common mode gain
CMRR=20*log10(Ad/Ac);
printf("The CMRR in dB %.0f dB",CMRR);
