clc
clear
//Input data
l=(5900*10^-10)//Wavelength of sodium D line in m
h=6.625*10^-34//Plancks constant in J.s
e=(1.602*10^-19)//Charge of electrons in Columbs
c=(3*10^8)//Velocity of light in m/s

//Calculations
E=((h*c)/l)/e//Energy emitted in eV

//Output
printf('The energy of the first excited state is %3.1f eV',E)
