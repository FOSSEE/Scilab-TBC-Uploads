//Caption: step size,noise power, SNR
//Example 4.32
//page no 203
//Find step size,noise power, SNR
//assume bandwidth of the singal is 4kHz
clear;
clc;
fs=32000;
A=2;
fm=4000;
BW=4000;
del=(2*%pi*fm*A)/fs;
disp("Volt",del,"i)step size");
Nq=del^2/3
disp("W",Nq,"ii)noise power");
SNR=(3*fs^3)/(8*%pi^2*fm^2*BW);
disp(SNR,"iii)SNR=");
