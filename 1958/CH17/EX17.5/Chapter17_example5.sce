clc
clear
//Input data
w=3//Wavelength of the light in Angstrom
v=(3*10^8)//Velocity of light in m/s
h=6.626*10^-34//Plancks constant in Js
q=40//Scattering angle in degrees
m=(9.11*10^-31)//Mass of electron in kg
c=(1.6*10^-19)//Charge of the electron in coloumbs

//Calculations
dl=(h/(m*v))*(1-cosd(q))/10^-10//Wavelength in Angstrom
l=(w+dl)//Wavelength of scattered X-rays

//Output
printf('Wavelength of scattered X-rays is %3.6f Angstrom',l)
