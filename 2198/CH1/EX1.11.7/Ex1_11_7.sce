//Ex 1.11.7
clc;clear;close;
format('v',8);

//Given : 
n=5*10^22;//per cm^3
mu_n=1300;//cm^2/V-s
mu_p=500;//cm^2/V-s
ni=1.5*10^10;//per cm^3
T=300;//K
rho_n=9.5;//ohm-cm
q=1.6*10^-19;//Coulomb
sigma_i=ni*q*(mu_n+mu_p);//(ohm-cm)^-1
rho_i=1/sigma_i;//ohm-cm
disp(rho_i,"Resistivity in ohm-cm : ");
sigma_n=1/rho_n;//(ohm-cm)^-1
ND=sigma_n/mu_n/q;//per m^3
Ratio=ND/n;
disp(Ratio,"Ratio of donor impurity atom to Si atom : ");
