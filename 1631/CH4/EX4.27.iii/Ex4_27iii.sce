//Caption: SNR
//Example 4.27.i
//page no 200
//Find  Signal to quantization noise ratio
clear;
clc;
Nq=127.15*10^-6
Meansignal=2;
P=Meansignal/1;
SNR=P/Nq;
SNRq=10*log10(SNR);
disp("dB",SNRq,"Signal to quantization noise ratio");
 
