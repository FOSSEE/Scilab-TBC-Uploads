clc
clear
//INPUT DATA
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
c=3*10^8//velocity of light in m/s
m=9.11*10^-31//mass of electron in Kg

//CALCULATION
w=(h/(c*m))/10^-10//The compton wavelength for an electronin Armstrong

//OUTPUT
printf('The compton wavelength for an electron is %3.4f Armstrong',w)
