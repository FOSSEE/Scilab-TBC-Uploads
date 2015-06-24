clc
clear
//Input data
l=632.8*10^-9//Wavelength of the laser beam in m
P=2.3*10^-3//Power output in W
c=(3*10^8)//Velocity of light in m/s
h=6.625*10^-34//Plancks constant in J.s

//Calculations
f=(c/l)//Frequency of the photon emitted by the laser beam in Hz
E=h*f//Energy of a photon in J
n=((P*60)/E)/10^17//The number of photons emitted *10^17

//Output
printf('The number of photons emitted is %3.4f*10^17 photons/minute',n)
