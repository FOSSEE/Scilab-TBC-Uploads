//Ex 1.11.8
clc;clear;close;
format('v',9);

//Given : 
n=5*10^22;//per cm^3
ni=1.52*10^10*10^6;//per m^3
q=1.6*10^-19;//Coulomb
mu_n=0.135;//m^2/V-s
mu_p=0.048;//m^2/V-s
impurity=1/10^8;//atoms
sigma_i=ni*q*(mu_n+mu_p);//(ohm-cm)^-1
rho_i=1/sigma_i;//ohm-cm
disp(rho_i,"Resistivity of intrinsic Si in ohm-m : ");
ND=n*impurity*10^6;//per m^3
sigma_n=ND*mu_n*q;//(ohm-m)^-1
rho_n=1/sigma_n;//ohm-m
disp(rho_n,"Resistivity of doped Si in ohm-m : ");
//Answer in the book is not accurate.
