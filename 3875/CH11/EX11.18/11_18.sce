clc;
clear;
h=1 //x intercept of parallel plane
k=1 //y intercept of parallel plane
l=1 //z intercept of parallel plane
a=0.352 //lattice constant in nm
tetha=28.5 //Braggs angle in degree
K_b=1.38*10^-23 //Boltzmann constant in J/K
H=6.63*10^-34 //Plancks constant in J-s
m=1.67*10^-27 //mass of nuetron in kg

//calculation

d=(a/sqrt(h^2+k^2+l^2)) //interplanar distance in nm
lambda=2*d*sind(28.5) //wavelength in nm
T=(H^2)/(3*m*K_b*((lambda*10^-9)^2))

mprintf("The effective temperature of neutrons is = %d K",T)
