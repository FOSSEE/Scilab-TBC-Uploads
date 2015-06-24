//Caption: signaling rate, bandwidth
//Example 4.33
//page no 204
//Find  signaling rate, bandwidth
//assuming signal is sampled at the rate 20% above Nyquist rate
clear;
clc;
fm=15*10^3;
fs=1.2*2*fm;
q=65536;
v=log2(q);
r=v*fs;
disp("i)signaling rate,")
disp("K bits/sec",r/1000,"r=");
BW=r/2;
disp("ii)bandwidth")
disp("kHz",BW/1000,"BW min=")
