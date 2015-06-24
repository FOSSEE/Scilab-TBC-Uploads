//Ex 2.10.2
clc;clear;close;
format('v',8);

//Given : 
rho_n=10;//ohm-cm
rho_p=3.5;//ohm-cm
ni=1.5*10^10;//per cm^3
Vj=0.56;//volt
q=1.6*10^-19;//Coulomb
mu_n=1500;//cm^2/V-s
mu_p=500;//cm^2/V-s
sigma_p=1/rho_p;//(ohm-cm)^-1
NA=sigma_p/q/mu_p;//per cm^3
sigma_n=1/rho_n;//(ohm-cm)^-1
ND=sigma_n/q/mu_n;//per cm^3
VT=Vj/log(NA*ND/ni^2);//V
T=11600*VT;//K
disp(T,"Temperature of junction in degree K : ");
t=T-273;//degree C
disp(t,"Temperature of junction in degree C : ");
