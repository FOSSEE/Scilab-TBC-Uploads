//Caption: Channel Capacity 
//Example 9.36ii
//page no 427
//Find Capacity of Channel
//assume that  succeissive samples are statistically independent
clear;
clc;
B=10*10^3;
SN=20;
SNR=10^(SN/10)
C=B*log2(1+(SNR));
disp("kb/s",C/1000,"C =")
