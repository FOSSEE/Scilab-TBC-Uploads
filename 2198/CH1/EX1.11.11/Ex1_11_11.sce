//Ex 1.11.11
clc;clear;close;
format('v',9);

//Given : 
ni=1.2*10^16;//per m^3
p=10^22;//per m^3
mu_p=500*10^-4;//cm^2/V-s
mu_n=1350*10^-4;//cm^2/V-s
q=1.6*10^-19;//Coulomb
n=ni^2/p;//per m^3
disp(n,"Electron concentration per m^3 : ");
sigma=q*(n*mu_n+p*mu_p);//(ohm-m)^-1
disp(sigma,"Conductivity of Si(ohm-m)^-1 : ");
