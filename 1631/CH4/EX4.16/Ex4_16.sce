//Caption: Signal to Quatization noise ratio
//Example 4.16
//page no 188
//Find  signal to Quatization noise ratio 
clear;
clc;

fs=8*10^3;
r=64*10^3;
N=8;//number of bits
SNR=(1.8+6*N);//signal to Quatization noise ratio
disp(SNR,"Signal to Quatization noise ratio of PCM system is")
disp("dB");
