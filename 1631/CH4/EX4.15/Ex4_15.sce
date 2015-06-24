//Caption: Signal to noise ratio
//Example 4.15
//page no 188
//Find  signal to noise ratio
clear;
clc;
fs=64*10^3;
fm=2*10^3;
fM=4*10^3;
SNR=(3*fs^3)/(8*%pi^2*fm^2*fM);// Signal to noise ratio
SNRO=10*log10(SNR)
disp("dB",SNRO,"Output signal to noise ratio =");
 
