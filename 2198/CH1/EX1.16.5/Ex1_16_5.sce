//Ex 1.16.5
clc;clear;close;
format('v',9);

//Given : 
A=2.3*10^-4;//m^2
n=1.5*10^16;//per m^3
l=1;//mm
mu_n=1400;//cm^2/V-s
mu_p=500;//cm^2/V-s
p=n;//per m^3
ni=n;//per m^3
q=1.6*10^-19;//Coulomb
sigma_i=ni*(mu_n*10^-4+mu_p*10^-4)*q;//(ohm-m)^-1
rho_i=1/sigma_i;//ohm-m
R=rho_i*l*10^-3/A;//ohm
V=9;//volt
I=V/R;//A
disp(I*1000,"Current, I(mA) : ");
