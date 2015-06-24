//Caption: output SNR
//Example 4.29
//page no 202
//Find  output SNR
clear;
clc;
fm=1*10^3;
fs=32*10^3;
FM=4*10^3;// Bandwidth
SNR=(3*fs^3)/(8*%pi^2*fm^2*FM);//SNR
SNRO=10*log10(SNR);
disp("dB",SNRO,"Output signal to noise ratio");

