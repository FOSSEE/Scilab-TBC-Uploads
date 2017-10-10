clc;
clear;
lambda=694.3*10^-9 //wavelength in m 
K_b=1.38*10^-23 //Boltzmann constant J/K
T=300 //Temperature in K
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation
Exp=(h*c)/(lambda*K_b*T) //exponential term of the formula
R=1/(exp(Exp)-1)

mprintf("The ratio of stimulated emission to spontaneoius emission is = %e",R)
//The answer provided in the textbook is wrong.
