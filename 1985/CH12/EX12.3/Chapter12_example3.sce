clc
clear
//Input data
l=6*10^-7//Wavelength of the photon in m
P=2//Power of lamp in W
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s

//Calculations
E=((h*c)/l)/10^-19//Energy of photon in J*10^-19
n=(P/(E*10^-19))/10^18//The number of photons emitted per second*10^18

//Output
printf('The number of photons emitted per second is %3.4f*10^18',n)
