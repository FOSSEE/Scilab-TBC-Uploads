//Caption: Final Bit rate
//Example 4.2.iii
//page no 167
//find  Final Bit rate
clc;
clear;
//Given data
bandwidth=4.2*10^6;
fm=bandwidth;
q=512// Quantization levels
v=9;
fs=2*fm;
r=v*fs;//signaling rate
disp(r,"Final Bit rate ");
disp("bits/sec");
