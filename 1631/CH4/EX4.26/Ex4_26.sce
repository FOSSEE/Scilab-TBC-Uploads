//Caption:Bits per sample
//Example 4.26
//page no 200
//Find number of bits per sample
clear;
clc;
SNR=20;//dB
averagepower=30*10^-3;
SNRO=10^(SNR/10);//dB
A=3.8;
//L=2^n
//SNRO=average signal power/Quatizing power
//del=(2*A)/L
L=sqrt((SNRO*A^2)/(3*averagepower));
n=log2(L);
n=ceil(n);
disp(n,"Bits required per sample");
