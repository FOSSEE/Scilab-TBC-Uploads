// Exa 7.9
format('v',7);clc;clear;close;
// Given data
Samplingrate = 200;//Sampling rate in MS/s
Samplingrate = Samplingrate * 10^6;// in S/s
t_r = 1/Samplingrate;//minimum rise time of pulse in s
t_r = t_r * 10^9;// in ns
disp(t_r,"The minimum rise time of pulse in ns is");
