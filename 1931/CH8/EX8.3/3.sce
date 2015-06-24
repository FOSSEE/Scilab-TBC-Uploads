clc
clear
//INPUT DATA
w=4000*10^-10//wavelength in black body in m
t=1500//temperature of black body in k
h=6.625*10^-34// Planck's constant m^2 Kg /sec
c=3*10^8//velocity of light in m/s
Kb=1.38*10^-23//Boltzmann's constant in m^2 Kg s^-2 k^-1

//CALCULATION
Edw=((8*3.14*h*c)/w^5)*(1/(exp((h*c)/(w*Kb*t))-1))//The energy density per unit wavelength in a black body cavity in J/m^4

//OUTPUT
printf('The energy density per unit wavelength in a black body cavity is %3.5f J/m^4',Edw)
