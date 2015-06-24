
//Exa:9.8
clc;
clear;
close;
//Given:
SQNR=20;
Nq=3*10^-4;//in Watts
S=sqrt(12*3*10^-4);
M=(3.8+3.8)/S;//-3.8V to 3.8V signal variation
n=log2(M);
printf("Number of bits per sample %f",n);
