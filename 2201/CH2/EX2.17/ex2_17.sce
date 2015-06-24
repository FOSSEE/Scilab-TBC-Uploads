// Exa 2.17
clc;
clear;
close;
// Given data
n_i = 1*10^19;// in /m^3
Miu_e = 0.36;// in m^2/volt.sec
Miu_h = 0.17;// in m^2/volt.sec
A = 2;// in cm^2
A = A *  10^-4;// in m^2
t = 0.1;// in mm
t = t*10^-3;// in m
V = 4;// in volts
e = 1.6*10^-19;// in C
Sigma_i = n_i * e * (Miu_e + Miu_h);// mho/m
J = Sigma_i * (V/t);// in Amp/m^2
I = J*A;// in Amp
disp(I,"The current in Amp is");
