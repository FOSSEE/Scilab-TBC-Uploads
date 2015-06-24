//Ex 1.40.7
clc;clear;close;
format('v',9);

//Given : 
L=100*10^-6;//m
A=10^-7*10^-6;//m^2
mu_e=0.13;//m^2/V-s
mu_h=0.05;//m^2/V-s
tau_h=10^-6;//sec
V=12;//volt
E=V/L;//v/m
tn=L^2/(mu_e*V);//sec
Gain=tau_h/tn*(1+mu_h/mu_e);//
disp(Gain,"Photoconductor gain : ");
