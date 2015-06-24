// Exa 1.3
clc;
clear;
close;
format('e',10)
// Given data
rho = 0.50;// in ohm-m
q = 1.6*10^-19;// in C
miu_n = 0.39;// in m^2/V-s
miu_p = 0.19;// in m^2/V-s
sigma = 1/rho;// in (ohm-m)^-1
//conductivity of a semiconductor, sigma = q*n_i*(miu_p+miu_n) or
n_i = sigma/(q*(miu_n+miu_p));// in /m^3
disp(n_i,"The intrinsic carrier concentration per m^3 is");
