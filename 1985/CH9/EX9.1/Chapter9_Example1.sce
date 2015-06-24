clc
clear
//Input data
V=150//Potential difference in V
h=(6.625*10^-34)//Plancks constant in Js
m=(9.1*10^-31)//Mass of the electron in kg
e=(1.6*10^-19)//Charge of the electron in coloumbs

//Calculations
l=(h/sqrt(2*m*e*V))/10^-10//de Broglie wavelength of the electron in m*10^-10

//Output
printf('The de Broglie wavelength of an electron is %3.4f *10^-10 m',l)
