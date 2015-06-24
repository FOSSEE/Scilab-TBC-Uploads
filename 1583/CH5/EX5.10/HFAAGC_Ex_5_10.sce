clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.10 page no 178
//given
fp=10*10^6//upper corner frequency
n=2//no. of stages
f1=fp*sqrt(2^(1/n)-1)//overall bandwidth
disp('since each stage has a gain of 20dB,the overall low-frequency gain is 40dB ')
mprintf('the overall bandwidth is %f MHz',f1*1e-6)
