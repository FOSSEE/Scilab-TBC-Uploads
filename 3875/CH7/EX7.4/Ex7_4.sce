clc;
clear;
lambda=694.3*10^-9 //wavelength in m
K_b=1.38*10^-23 //Boltzmann constant J/K
T=300 //Temperature in K
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation 

N1_by_N2=exp(-(h*c)/(lambda*K_b*T))

mprintf("The ratio of population of two energy levels N1/N2 is = %1.2e",N1_by_N2)
//The answer provided in the textbook is wrong.
