//Chapter 12
//page no 487
//given
clc;
clear all;
RIN=-150;           //in dB
B=4*10^6;
m=0.04;
CNR=10*log10(m^2/(2*10^-15*B));
printf("\n CNR = %0.0f dB",CNR);
