clc;
clear all;
k=1.38*1e-23;//boltzmann constant
N=1e27;//HCL molecule per cubic meter
E=1e6;//electric field of vapour
D=3.33*1e-30;
pHCL=1.04*D;
T=300;//tempreture in kelvin
alpha=(pHCL)^2/(3*k*T);
p0=N*alpha*E;//orientation polarization
disp('C/m^2',p0,'orientation polarization is=');
