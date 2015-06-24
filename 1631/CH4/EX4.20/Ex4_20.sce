
//Caption: Quantizing noise ratio
//Example 4.20
//page no 196
//find signal to noise ratio
clc;
clear;

SNR=40;
SNRO=10^(SNR/10);
//SNR=3(q^2)/2, Signal to Quantization noise ratio
q=sqrt((2*SNRO)/3);
q=ceil(q);
v=log2(q);//q=2^v  Quantization levels
v=ceil(v);
snr=1.76+6.02*v;//output Signal to Quantization noise ratio
disp("dB",snr,"Output Signal to Quantization noise ratio")
