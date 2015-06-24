//Caption :Maximum frequency
//Example 4.11
//page no 174
//find Maximum frequency
clc;
clear;
//Given data
v=7;
SNR=1.8+6*v;
r=56*10^3;
fs=r/v;//r=v*fs signaling rate
fm=fs/2;//Nquset rate
disp(fm/10^3,"Maximum frequency is");
disp("kHz");
