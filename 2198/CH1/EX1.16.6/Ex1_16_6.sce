//Ex 1.16.6
clc;clear;close;
format('v',9);

//Given : 
ND=10^14;//per m^3
Jn=10;//mA/cm^2
E=3;//V/cm
T=27+273;//K
q=1.6*10^-19;//Coulomb
mu_n=1500;//cm^2/V-s
Dn=mu_n/39;//Diffusion constant
n=ND;//per m^3
dnBYdx=((Jn*10^-3/10^-4)-n*q*mu_n*E)/q/Dn;//concentration gradient
disp(dnBYdx,"Concentration gradient, dn/dx : ");
