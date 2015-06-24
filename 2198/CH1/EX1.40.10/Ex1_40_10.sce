//Ex 1.40.10
clc;clear;close;
format('v',9);

//Given : 
rho=9.6*10^-2;//ohm-m
mu_n=1300;//cm^2/V-s
q=1.6*10^-19;//Coulomb
sigma_n=1/rho;//(ohm-m)^-1
ND=sigma_n/q/(mu_n*10^-4);//per m^3
ni=5*10^22*10^6;//per m^3
disp(ND/ni,"Ratio of donor atom to Si atom : ");
