clc;
clear all;
I2 = 100; // The sound intensity in watts per square meters
I0 = 1e-12; // Standard intensity in watts per square meters
b = 10*log10(I2/I0);//The sound intensity level of a jet plane
disp('dB',b,'The sound intensity level of a jet plane is')
