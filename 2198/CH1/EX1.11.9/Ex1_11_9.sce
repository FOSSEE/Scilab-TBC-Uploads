//Ex 1.11.9
clc;clear;close;
format('v',7);

//Given : 
rho=9.6*10^-2;//ohm-m
mu_n=1300*10^-4;//m^2/V-s
sigma_n=1/rho;//(ohm-cm)^-1
TotalAtoms=5*10^28;//per m^3
q=1.6*10^-19;//Coulomb
ND=sigma_n/mu_n/q;//per m^3
ratio=ND/TotalAtoms;
disp(ratio,"Ratio of doner atom to Si atom per unit volume : ");
