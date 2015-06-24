// Exa 1.23.12
clc;
clear;
close;
//Given data
n_i = 1.5 * 10^10;
n_o = 10^17;
KT = 0.0259;
P_o = (n_i)^2/n_o;// in cm^-3
del_E = KT * log(n_o/n_i);// in eV
disp(del_E,"equilibrium hole concentration in eV is");
