clc;
clear;
P=1 //power in W
lambda=694.3*10^-9 //wavelength in m
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation
n=(P*lambda)/(h*c)

mprintf("The number of photons emitted per second = %1.2e",n)
