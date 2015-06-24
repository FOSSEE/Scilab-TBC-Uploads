clc;
clear all;
I1 = 100;// Intensity of sound produced by turbine in Watts per square meters
I0 = 1e-12; // standard intensity
b = 10*log10(I1/I0);//The relative intensity of a turbine
disp('dB',b,'The relative intensity of a turbine is')
