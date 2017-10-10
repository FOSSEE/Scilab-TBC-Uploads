clc;
clear;
A=5*10^-4 //area in m^2
sigma=5.67*10^-8 //Stefan-Boltzmann Constant in J/m^2sK^4
t=60 //time in s
T=727+273 //temperature in K
Q=300 //energy in J

//calculation

e=Q/(sigma*T^4*t*A)
mprintf("The emissivity of the surface area is = %1.2f",e)
