clc
clear
//INPUT DATA
E=3.5*10^-3*60//power output in J/min
w=0.621*10^-6//wavelength of light in m
h=6.625*10^-34// Planck's constant in m^2 Kg/sec
c=3*10^8//velocity of light in m/s

//CALCULATION
e=(h*c)/w//energy emitted by one photon in J
n=(E/e)/10^17//The number of photons emitted per minute in photons /minute *10^17

//OUTPUT
printf('The number of photons emitted per minute is %3.3f *10^17 photons /minute',n)
