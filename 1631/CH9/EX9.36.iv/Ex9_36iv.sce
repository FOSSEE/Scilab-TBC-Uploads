//Caption: Bandwidth
//Example 9.36ii
//page no 427
//Find Required bandwidth 
//assume that  succeissive samples are statistically independent
clear;
clc;
SN=20;
SNR=10^(SN/10);
C=8*10^4;
B=C/(log2(1+SNR));//Bandwidth
disp("kHz",B/1000,"Bandwidth  B = ");
