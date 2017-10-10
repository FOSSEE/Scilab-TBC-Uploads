clc;
clear;
e=0.85 //emissivity
T=2000 //Temperature in K
A=5*10^-5 //surface area in m^2
t=60 //time in s 
sigma=5.7*10^-8 //Stefan-Boltzmann Constant in J/m^2sK^4

//calculation
Q=e*sigma*T^4*A*t
mprintf("The energy radiated per unit area per sec is = %d Joules.",Q)
//The answer varies due to round off error.
