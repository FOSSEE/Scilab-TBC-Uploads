//Ex 1.16.2
clc;clear;close;
format('v',9);

//Given : 
mu_n=3800;//cm^2/V-s
mu_p=1300;//cm^2/V-s
ni=2.5*10^13;//per cm^3
q=1.6*10^-19;//Coulomb
ND=4.4*10^22/10^8;//per cm^3
sigma_n=ND*q*mu_n;//(ohm-m)^-1
rho_n=1/sigma_n;//ohm-cm
disp(rho_n,"Resistivity of doped Ge(ohm-cm) : ");
