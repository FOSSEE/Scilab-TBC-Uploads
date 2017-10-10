clc;
clear;
S=1.4*10^3 //rate of suns energy striking in watt/m^2
r=1.5*10^11 //radius of earths orbit in m
R=7*10^8 //radius of sun in m
sigma=5.7*10^-8 //Stefan-Boltzmann Constant in J/m^2sK^4

//calculation
T=((S*r^2)/(sigma*R^2))^(1/4)

mprintf("The surface temperature of the sun = %d K",T)
//The answer provided in the textbook is wrong.
