//Ex 1.40.18
clc;clear;close;
format('v',9);

//Given : 
q=1.6*10^-19;//Coulomb
l=0.1;//cm
A=100*10^-8;//cm^2
n_n=5*10^20*10^-6;//per cm^3
mu_n=0.13*10^4;//cm^2/V-s
sigma_n=q*n_n*mu_n;//(ohm-cm)^-1
rho=1/sigma_n;//ohm-cm
R=rho*l/A;//ohm
disp(round(R/10^6),"Resistance of the bar(Mohm) : ");
