//Caption: Capacity of Channel
//Example 9.35
//page no 426
//Find Capacity of Channel
//Channel is aproximated by the AWGN Channel
clear;
clc;
B=4000;
S=0.1*10^-3;
n=2*10^-12;
N=n*B;
C=B*log2(1+(S/N));//Capacity of Channel
printf("\n Capacity of Channel \n\n\t C=%.3f(10^3) b/s",C/1000);
