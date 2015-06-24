// Exa 1.16
clc;
clear;
close;
format('v',9)
// Given data
N = 3*10^25;// in /m^3
e = 1.602*10^-19;// in C
E_G = 1.1;// in eV
E_G = E_G*e;// in J
kdas = 1.38*10^-23;// in J/K
T = 300;// in K
miu_e = 0.14;// in m^2/V-s
miu_h = 0.05;// in m^2/V-s
n_i = N*(%e^((-E_G)/(2*kdas*T)));// in /m^3
disp(n_i,"The interinsic carrier concentration in /m^3 is");
sigma = n_i*e*(miu_e+miu_h);// in S/m
disp(sigma,"The conductivity of silicon in S/m is");
