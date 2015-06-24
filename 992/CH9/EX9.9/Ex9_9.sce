
//Exa:9.9
clc;
clear;
close;
//Given:
SNR=32;
Actual_snr=10^(SNR/10);
w1=300;//in Hz
w2=3400;//in Hz
w=w2-w1;
c=w*log2(1+Actual_snr);
printf("\n Capacity=%f bits/sec",c);