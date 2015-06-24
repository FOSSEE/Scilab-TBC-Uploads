// Exa 2.22
clc;
clear;
close;
// Given data
B = 0.48;// in Wb/m^2
R_H = 3.6 * 10^-4;// in m^3/c
R = 9*10^-3;// in ohm-m
Sigma = 1/R;// in (ohm-m)^-1
Rho = 1/R_H;// in coulomb/m^3
e = 1.6*10^-19;// in C
n = Rho/e;// in /m^3
Miu = Sigma * R_H;// in m^2/volt-s
disp(Miu,"The mobility of electron in m^2/volt-s is");
