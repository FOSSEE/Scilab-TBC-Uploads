//Ex 2.6.3
clc;clear;close;
format('v',6);

//Given : 
mu_n=1500*10^-4;//m^2/V-s
mu_p=475*10^-4;//m^2/V-s
ni=1.45*10^10*10^6;//per m^3
q=1.6*10^-19;//Coulomb
rho_p=10;//ohm-cm
rho_p=rho_p*10^-2;//ohm-m
rho_n=3.5;//ohm-cm
rho_n=rho_n*10^-2;//ohm-m
sigma_p=1/rho_p;//(ohm-m)^-1
NA=sigma_p/q/mu_p;//m^3
sigma_n=1/rho_n;//(ohm-m)^-1
ND=sigma_p/q/mu_n;//m^3
VT=26*10^-3;//V
Vj=VT*log(NA*ND/ni^2);//V
disp(Vj,"Height of potential barrier in V : ");
//Anser in the book is wrong.
