// Exa 1.10
clc;
clear;
close;
format('v',10)
// Given data
rho_i = 0.47;// in ohm-m
sigma_i = 1/rho_i;// in S/m
miu_e = 0.39;// in m^2/V-s
miu_h = 0.19;// in m^2/V-s
e = 1.6*10^-19;// in C
//sigma_i = n_i*e*(miu_e+miu_h);
n_i = sigma_i/( e*(miu_e+miu_h) );// in /m^3
disp(n_i,"The density of electrons per m^3 is");
E = 10^4;
v_n = miu_e*E;// in m/s
disp(v_n,"The drift velocity for electrons in m/s is");
v_h = miu_h*E;// in m/s
disp(v_h,"The drift velocity for holes in m/s is");
