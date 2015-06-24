clc;
clear all;
I1 = 0.1;// Intensity of sound produced in Watts per square meters
I0 = 1e-12; // standard intensity level
b = 10*log10(I1/I0);//The sound intensity produced by thunder 
disp('dB',b,'The sound intensity produced by thunder is')
