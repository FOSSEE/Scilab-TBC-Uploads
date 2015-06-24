//Example 10.11.1 // sampling rate
clc;
clear;
close;
//given data :
format('v',6)
N=10;//number of cycles
f1=1*10^3;//in Hz
f2=100*10^3;// in Hz
sampling_period1=N/f1;
sampling_frequency1=1/sampling_period1;
disp(sampling_frequency1,"sampling frequency of 1 kHz signal in samples per second")
sampling_period2=N/f2;
sampling_frequency2=1/sampling_period2;
disp(sampling_frequency2,"sampling frequency of 100 kHz signal in samples per second")
