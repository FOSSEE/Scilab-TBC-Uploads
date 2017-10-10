clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
m=9.1*10^-31 //mass in kg
L=10^-9 //potential width in m
c=3*10^8 //velocity of light in m/s

//calculation
lambda=(8*m*c*L^2)/(27*h)
mprintf("The wavelength of radiation emitted is %1.2e m or 122 nm",lambda)
//The answer varies due to round off error.
