//Ex 1.13.1
clc;clear;close;
format('v',9);

//Given : 
ND=10^14;//per cm^3
NA=7*10^13;//per cm^3
rho_i=60;//ohm-cm
E=2;//V/cm
q=1.6*10^-19;//Coulomb
mu_p=1800;//cm^2/V-s
mu_n=3800;//cm^2/V-s
sigma_i=1/rho_i;//(ohm-cm)^-1
ni=sigma_i/q/(mu_n+mu_p);//per cm^3
//n=p+(ND-NA);//per cm^3
//n*p=ni^2 implies (p+(ND-NA))*p=ni^2
//p^2+(ND-NA)*p-ni^2=0
m=[1 (ND-NA) -ni^2];//polynomial
p=roots(m);//per m^3
p=p(2);//taking only +ve value
n=ni^2/p;//per m^3
J=(n*mu_n+p*mu_p)*q*E/10^-4;//A/m^2
disp(J,"Total current density(A/m^2) : ");
//Answer in the textbook is not accurate.
