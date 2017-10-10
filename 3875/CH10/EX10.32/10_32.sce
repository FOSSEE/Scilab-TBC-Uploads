clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s
lambda=694.5*10^-9 //wavelength in m
delta_t=10^-3

//calculation
delta_lambda=abs(-(lambda^2/(4*%pi*c*delta_t)))

mprintf("The natural line width of laser transition is = %1.2e m",delta_lambda)
//The answer provided in the textbook is wrong.
