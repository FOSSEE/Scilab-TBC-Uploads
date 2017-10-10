clc;
clear;
r=5*10^-2 //outer radius of copper sphere in m
T1=10^3//temperature in K
T2=300 //temperature in K
c=4*10^3 //specific heat in J/kg
rho=9*10^3 //density of copper in kg/m^3
sigma=5.67*10^-8 // Stefan-Boltzmann Constant in J/m^2sK^4

//calculation
t=((rho*r*c)/(9*sigma))*((1/T2^3)-(1/T1^3))

mprintf("The time required to cool from 1000 to 300K is = %.2e sec or 127*10^3 sec\n",t)

