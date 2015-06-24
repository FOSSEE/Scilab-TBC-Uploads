//Ex 1.15.1
clc;clear;close;
format('v',9);

//Given : 
ND=10^13;//per cm^3
Bz=0.2;//Wb/m^2
d=5;//mm
E=5;//V/cm
q=1.6*10^-19;//Coulomb
mu_n=1300;//cm^2/V-s
rho=ND*q;//Coulomb/cm^3
J=rho*mu_n*E;//A/cm^2
VH=Bz*10^-4*J*d*10^-1/rho;//V
disp(VH*10^3,"Magnitude of hall voltage(mV) : ");
