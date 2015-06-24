// Exa 2.15
clc;
clear;
close;
// Given data
n_i = 2*10^19;// in /m^3
Miu_e = 0.36;// in m^2/v.s
Miu_h = 0.17;// in m^2/v.s
A = 1*10^-4;// in m^2
V = 2;// in Volts
l = 0.3;// in mm
l = l * 10^-3;// in m
e = 1.6*10^-19;// in C
Sigma_i = n_i * e * (Miu_e+Miu_h);// in mho/m
I = (Sigma_i * V*A)/l;// in amp 
disp(I,"The current in amp is");
