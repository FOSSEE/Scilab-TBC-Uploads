//Caption: Output signal to noise ratio
//Example 4.2.iv
//page no 167
//find Output signal to noise ratio
clc;
clear;
//Given data
bandwidth=4.2*10^6;
fm=bandwidth;
q=512// Quantization levels
v=9;
sn=4.8+6*v;//noise in dB
disp(sn,"Output signal to noise ratio is");
disp("dB");
