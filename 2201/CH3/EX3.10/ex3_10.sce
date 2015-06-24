// Exa 3.10
clc;
clear;
close;
// Given data
Rho = 9.6*10^-2;// ohm-m
Sigma_n = 1/Rho;// in (ohm-m)^-1
Miu_n = 1300;// in cm^2/V-s
Miu_n = Miu_n * 10^-4;// in m^2/V-s
q = 1.6*10^-19;// in C
N_D = Sigma_n/(Miu_n*q);// in atoms/m^3
d = 5*10^22;// in atoms/cm^3
d = d * 10^6;// in atoms/m^3
R_d = N_D/d;//  Ratio 
disp(R_d,"Ratio of donor atom to silicon atoms per unit volume is");
