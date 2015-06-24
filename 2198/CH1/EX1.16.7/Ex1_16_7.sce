//Ex 1.16.7
clc;clear;close;
format('v',9);

//Given : 
ND=10^13;//per m^3
NA=10^14;//per m^3
rho_i=44;//ohm-cm
E=3;//V/cm
q=1.6*10^-19;//Coulomb
mu_n=0.38;//m^2/V-s
mu_p=0.18;//m^2/V-s
ni=2.5*10^19;//per m^3
//n=p+(ND-NA);//per cm^3
//n*p=ni^2 implies (p+(ND-NA))*p=ni^2
//p^2+(ND-NA)*p-ni^2=0
m=[1 (ND-NA) -ni^2];//polynomial
p=roots(m);//per m^3
p=p(1);//taking only +ve value
n=ni^2/p;//per m^3
J=(n*mu_n+p*mu_p)*q*(E/10^-2);//A/m^2
disp(J,"Total current density(A/m^2) : ");
//Ans in the textbook is not accurate.
