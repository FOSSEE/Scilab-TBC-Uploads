//Ex 1.11.1
clc;clear;close;
format('v',9);

//Given : 
ni=1.5*10^10/10^-6;//per m^3
mu_n=1800*10^-4;//m^2/V-s
mu_p=500*10^-4;//m^2/V-s
q=1.6*10^-19;//Coulomb
sigma_i=ni*(mu_n+mu_p)*q;//(ohm-m)^-1
disp(sigma_i,"Conductivity in (ohm-m)^-1 : ");
rho_i=1/sigma_i;//ohm-m
disp(rho_i,"Resistivity in ohm-m : ");
