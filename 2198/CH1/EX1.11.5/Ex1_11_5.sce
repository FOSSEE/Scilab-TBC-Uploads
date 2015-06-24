//Ex 1.11.5
clc;clear;close;
format('v',9);

//Given : 
l=0.1*10^-2;//m
R=1.5*10^3;//ohm
mu_n=0.14;//m^2/V-s
mu_p=0.05;//m^2/V-s
A=8*10^-8;//m^2
ni=1.5*10^10*10^6;// per m^3
q=1.6*10^-19;//Coulomb
rho_n=R*A/l;//ohm-m
sigma_n=1/rho_n;//(ohm-m)^-1
ND=sigma_n/mu_n/q;//
disp(ND,"Majority Carrier density(per m^3) : ");
