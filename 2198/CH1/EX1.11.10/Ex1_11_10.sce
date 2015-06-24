//Ex 1.11.10
clc;clear;close;
format('v',9);

//Given : 
ni=2.5*10^13;//per cm^3
mu_p=1800;//cm^2/V-s
mu_n=3800;//cm^2/V-s
q=1.6*10^-19;//Coulomb
sigma_i=ni*q*(mu_n+mu_p);//(ohm-cm)^-1
rho_i=1/sigma_i;//ohm-cm
disp(round(rho_i),"Resistivity of Ge(ohm-cm) : ");
