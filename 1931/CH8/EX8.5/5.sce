clc
clear
//INPUT DATA
x=90//x ray photon scattered at a angle in degrees
h=6.625*10^-34//Planck's constant in J-sec
c=3*10^8//velocity of light m/s
m=9.11*10^-31//mass of electron in Kg

//CALCULATION
w=((h/(c*m))*(1-cosd(x)))/10^-10//The change in wavelength for Xray photon in A*10^-10

//OUTPUT
printf('The change in wavelength for X ray photon is %3.4f A',w)
