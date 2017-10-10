clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
m=1.804*10^-27 //mass of neutron in kg
K_b=1.38*10^-23 //Boltzmann constant in J/K
tetha=30 //Braggs angle in degree
n=2 //second order reflection
T=300 //temperature in K

//calculation
lambda=h/sqrt(3*m*K_b*T)
a=sqrt((3*lambda))/2

mprintf("The lattice constant is = %1.2e m.",a)
//The answer provided in the textbook is wrong.
