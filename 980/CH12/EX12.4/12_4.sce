clc;
clear;
format('v',11);
epsilone_0=8.85*10^-12;
m_0=4*%pi*10^-7;                //The permeability of air.
Z=300;
a=1*10^-3;
b=2*a*cosh(Z*%pi*sqrt(epsilone_0/m_0));
disp(b,"b(in meter)=");
