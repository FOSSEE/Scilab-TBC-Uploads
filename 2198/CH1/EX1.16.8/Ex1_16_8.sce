//Ex 1.16.8
clc;clear;close;
format('v',9);

//Given : 
T=300;//K
ni=2.5*10^13;//per cm^3
mu_n=3800;//cm^2/V-s
mu_p=1800;//cm^2/V-s
q=1.6*10^-19;//Coulomb
sigma_i=ni*(mu_n+mu_p)*q/10^-2;//(ohm-m)^-1
disp(sigma_i,"Conductivity of intrinsic Ge in (ohm-m)^-1 : ");
ND=4.4*10^22/10^7;//per cm^3
n=ND;//per cm^3
sigma_n=n*mu_n*q/10^-2;//(ohm-m)^-1
disp(sigma_n,"Conductivity after adding donor impurity in (ohm-m)^-1 : ");
NA=4.4*10^22/10^7;//per cm^3
p=NA;//per cm^3
sigma_p=p*mu_p*q/10^-2;//(ohm-m)^-1
disp(sigma_p,"Conductivity after adding acceptor impurity in (ohm-m)^-1 : ");
