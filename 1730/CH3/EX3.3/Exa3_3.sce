//Exa3.3
clc;
clear;
close;
// given data
n_i=2.5*10^13;// in /cm^3
rho=0.039;// in ohm-cm
sigma_n=1/rho;
e=1.602*10^-19;// in C
miu_e=3600;// in cm^2/V-s
//since sigma_n = n*e*miu_e = N_D*e*miu_e
N_D=sigma_n/(e*miu_e);
n=N_D;// (approx)
disp("Concentration of electrons is : "+string(n)+" /cm^3");
p=n_i^2/n;
disp("Concentration of holes is : "+string(p)+" /cm^3");
