clc
clear
//Input data
l=1*10^-10//Wavelength of the x-ray in m
P=1*1000//Output power in W
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s

//Calculations
E=((h*c)/l)/10^-15//Energy of the photon in J*10^-15
n=(P/(E*10^-15))/10^17//The number of photons emitted per second*10^17

//Output
printf('The number of photons emitted per second is %3.4f*10^17',n)
