clc
clear
//INPUT DATA
t=300//temperature in k
w=698.3*10^-9//wavelength of photon in m
h=6.625*10^-34// Planck's constant in m^2 Kg/sec
c=3*10^8//velocity of light in m/s
Kb=1.38*10^-23//Boltzmann's constant in m^2 Kg.s^-2 k^-1

//CALCULATION
Ratio=(exp((-h*c)/(w*Kb*t)))/10^-30//ratio of propulsion of the two states in a laser *10^-30

//OUTPUT
printf('The ratio of propulsion of the two states in a laser is %3.4f *10^-30',Ratio)
