//Caption:signal to noise ratio
//Example 4.8
//page no 171
//find signal to noise ratio
clc;
clear;
//Given data
fm=3.5*10^3;
r=50*10^3;
fs=2*fm;
rms=0.2;
xmax=2;
v=r/fs;//signaling rate r=v*fs
v=ceil(v);
P=(rms^2)/1;
SNR=((3*P*2^(2*v))/(xmax^2));
SN=10*log10(SNR);
disp(ceil(SN),"signal to niose ratio");
disp("dB");
