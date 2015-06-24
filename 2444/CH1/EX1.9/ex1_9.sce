// Exa 1.9
clc;
clear;
close;
format('v',9)
// Given data
rho = 0.039;// in ohm-cm
sigma_n = 1/rho;// in mho/cm
miu_e = 3600;// in cm^2/V-s
e = 1.602*10^-19;// in C
// sigma_n = n*e*miu_e = N_D*e*miu_e;
N_D = sigma_n/(e*miu_e);// in /cm^3
n = N_D;// in /cm^3
disp(n,"The electrons density per cm^3 is");
n_i = 2.5*10^13;// in /cm^3
p = (n_i^2)/n;// in /cm^3
disp(p,"The hole density per cm^3 is");
