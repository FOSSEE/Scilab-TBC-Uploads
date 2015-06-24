//Example 7.5(a)

clear;

clc;

ID=1*10^(-6);

fH=1*10^6;

q=1.602*10^(-19);

In=sqrt(2*q*ID*fH);

SNR=20*log10(ID/In);

printf("Signal to Noise Ratio=%.1f dB",SNR);