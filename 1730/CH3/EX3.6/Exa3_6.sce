//Exa3.6
clc;
clear;
close;
// given data
n_i=2.5*10^13;// in cm^3
e=1.6*10^-19;// in coulomb
miu_h=1800;// in cm^2/V-s
miu_e=3800;// in cm^2/V-s
sigma_i=n_i*e*(miu_e+miu_h);
disp("Intrinsic conductivity is : "+string(sigma_i)+" /ohm-cm");
rho_i=1/sigma_i;
disp("Intrinsic resistiviry is : "+string(rho_i)+" ohm-cm")
