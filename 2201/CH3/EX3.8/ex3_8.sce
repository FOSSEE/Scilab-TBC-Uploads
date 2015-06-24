//Exa 3.8
clc;
clear;
close;
// Given data
q = 1.6*10^-19;// in C
n_i = 2.5*10^13;
Miu_n = 3800;// in cm^2/V-s
Miu_p = 1800;// in cm^2/V-s
Sigma = n_i*(Miu_n + Miu_p)*q;// in (ohm-cm)^-1
Rho = 1/Sigma;// in ohm-cm
disp(Rho,"The resistivity in ohm-cm is");
N_D =4.4*10^22/10^8 ;// in atoms/cm^3
Sigma_n = N_D * Miu_n*q;// in (ohm-cm)^-1 
Rho1 = 1/Sigma_n;// in ohm cm
disp(Rho1,"The resistivity drops in ohm cm is"); 
