//Caption: Signal Bandwidth,Noise Ratio
//Example 4.6
//page no 170
//Find Signal Bandwidth,Noise Ratio
clc;
clear;
//Given data
v=7;
r=50*10^6;
//fs=2*fm
fm=r/(2*v);
disp(fm*10^-6,"Maximum message Bandwidth is ");
disp("MHz");

snr=1.8+(6*v);
disp(snr,"signal to quantization niose ration");
disp("dB");

