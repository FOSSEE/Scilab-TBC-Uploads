// Exa 2.18
clc;
clear;
close;
// Given data
Miu_h = 500;// in cm^2/V.s
Miu_e = 1500;// in cm^2/V.s
n_i = 1.6*10^10;// in /cm^3
e = 1.6*10^-19;// in C
Sigma_i = n_i * e * (Miu_e+Miu_h);// in mho/cm
disp(Sigma_i,"The conductivity of pure silicon in mho/cm is");
