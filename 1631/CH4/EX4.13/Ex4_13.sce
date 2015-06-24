//Caption: Maximum Amplitude
//Example 4.13
//page no 185
//Find  Maximum Amplitude
clear;
clc;
fm=3*10^3;
Nyquistrate=2*fm;//Nyquistrate
fs=5*Nyquistrate;//Samplingfrquency
Ts=1/fs;// Sampling Interval
del=0.25;//step size
fm1=2*10^3;
Am=del/(2*%pi*fm1*Ts);
disp("Volts",Am,"Maximum Amplitude ");

