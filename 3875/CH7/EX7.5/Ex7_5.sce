clc;
clear;
N2_by_N1=10^-30 //ratio of energy levels
K_b=1.38*10^-23 //Boltzmann constant J/K
T=300 //Temperature in K
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation

lambda=(h*c)/(30*K_b*T)

mprintf("The wavelength of the radiation emitted is = %e m",lambda)
//The answer given in the textbook is wrong.
