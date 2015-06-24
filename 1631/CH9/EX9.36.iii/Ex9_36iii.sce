//Caption: SNR
//Example 9.36iii
//page no 427
//Find SNR
//assume that  succeissive samples are statistically independent
clear;
clc;
C=8*10^4;
B=10^4;
SN=2^(C/B)-1;
SNR=10*log10(SN);//SNR
disp("dB",SNR,"SNR =");//required SNR is greater that 24.064
