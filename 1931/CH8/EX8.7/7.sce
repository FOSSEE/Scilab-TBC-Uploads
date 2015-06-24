clc
clear
//INPUT DATA
w=3*10^-10//wavelength of incident photons in m
angle=60//angle of view in degrees
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
c=3*10^8//velocity of light in m/sec
m=9.11*10^-31//mass of electron in Kg

//CALCULATION
tw=(w+((h/(c*m))*(1-cosd(angle))))/10^-10//The wavelength of scattered photons in Armstrong

//OUTPUT
printf('The wavelength of scattered photons is %3.3f Armstrong',tw)
