// Exa 1.2
clc;
clear;
close;
format('v',6)
// Given data
q = 1.6*10^-19;// in C
n_i = 2.5*10^19;// in /m^3
miu_n = 0.38;// in m^2/V-s
miu_p = 0.18;// in m^2/V-s
// The intrinsic conductivity for germanium,
sigma_i = q*n_i*(miu_n+miu_p);// in (ohm-m)^-1
disp(sigma_i,"The intrinsic conductivity in (ohm-m)^-1 is");
