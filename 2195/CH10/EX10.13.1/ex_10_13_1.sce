//Example 10.13.1 // sampling rate
clc;
clear;
close;
//given data :
N=10;//number of cycles
f=1*10^3;//in Hz
sampling_period=N/f;
sampling_rate=1/sampling_period;
disp(sampling_rate,"sampling rate in samples per second")
