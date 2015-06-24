clc
clear
//Input data
E=0.025//Energy of the electron in MeV
e=(1.6*10^-19)//Charge of the electron in coloumbs
h=(6.625*10^-34)//Plancks constant in Js
m=(9.1*10^-31)//Mass of the electron in kg

//Calculations
E1=E*e*10^6//Energy of the electron in J
v=sqrt((2*E1)/m)//Velocity of the electron in m/s
l=(h/(m*v))/10^-10//de Broglie wavelength in angstroms

//Output
printf('The de Broglie wavelength is %3.4f angstroms',l)
