// Exa 2.10
clc;
clear;
close;
// Given data
Miu_e = 1500;// in cm^2/volt.sec
Miu_h = 500;// in cm^2/volt.sec
n_i = 1.6*10^10;// in /cm^3
e = 1.6*10^-19;// in C
Sigma_i = n_i*(Miu_e+Miu_h)*e;// in mho/cm
Sigma = Sigma_i;// in mho/cm
disp(Sigma,"The conductivity of pure silicon in mho/cm is");
