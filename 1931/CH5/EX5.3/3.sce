clc
clear
//INPUT DATA
E=0.02*1.6*10^-19//Ionisation energy in J
h=6.625*10^-34// Planck's constant in m^2 Kg/sec
c=3*10^8//velocity of light in m/s

//CALCULATION
w=((h*c)/E)/10^-5// long wavelength limit of an extrinsic semiconductor in m *10^-5

//OUTPUT
printf('The long wavelength limit of an extrinsic semiconductor is %3.4f *10^-5.m',w)
