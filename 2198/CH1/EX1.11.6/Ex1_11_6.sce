//Ex 1.11.6
clc;clear;close;
format('v',9);

//Given : 
A=2.5*10^-4;//m^2
n=1.5*10^16;//per m^3
q=1.6*10^-19;//Coulomb
mu_n=0.14;//m^2/V-s
mu_p=0.05;//m^2/V-s
I=1.2*10^-3;//A
V=9;//Volts
ni=n;// per m^3
sigma_i=ni*q*(mu_n+mu_p);//(ohm-m)^-1
rho_i=1/sigma_i;//ohm-m
R=V/I;//ohm
l=R*A/rho_i;//m
disp(l*1000,"Length of the bar(mm) : ");
