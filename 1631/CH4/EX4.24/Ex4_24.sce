//Caption: Maximum Amplitude,SNR
//Example 4.24
//page no 199
//determine the  Maximum Amplitude,
//              
clear;
clc;
del=250*10^-3;
wm=2*%pi*1000; 
fs=3*10^3;
Ts=1/fs

Amax=(del*3*fs*2)/(wm);//Amplitude
disp("V",Amax,"Maximum Amplitude,");



