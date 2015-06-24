// Exa 2.16
clc;
clear;
close;
// Given data
d = 4.2*10^28;// in atoms/m^3
n_d = d/10^6;// in atoms/m^3
e = 1.6*10^-19;// in C
Miu_e = 0.36;// in m^2/V-sec
Sigma_n = n_d *e *Miu_e;// in mho/m
Rho_n = 1/Sigma_n;// in ohm m
disp(Rho_n,"The resistivity in Ωm is");
