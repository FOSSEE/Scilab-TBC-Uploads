//Ex 1.40.8
clc;clear;close;
format('v',7);

//Given : 
T=300;//K
rho_i=45;//ohm-cm
//part (i)
mu_n=3800;//cm^2/V-s
mu_p=1800;//cm^2/V-s
ni=2.5*10^13;//per cm^3
q=1.6*10^-19;//Coulomb
sigma=ni*q*(mu_n+mu_p);//(ohm-cm)^-1
rho=1/sigma;//ohm-cm
disp(round(rho),"Resistivity of intrinsic Ge at 300K(ohm-cm) : ");
//part (ii)
ND=4.4*10^22/10^8;//per cm^3
sigma=ND*q*mu_n;//(ohm-cm)^-1
rho=1/sigma;//ohm-cm
disp(rho,"Resistivity of doped Ge(ohm-cm) : ");
