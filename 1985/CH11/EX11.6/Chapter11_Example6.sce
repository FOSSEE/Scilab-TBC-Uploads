clc
clear
//Input data
q=60//Angle of scattering in degrees
l=1.24//Wavelength of X-rays in angstroms
m=9.1*10^-31//Mass of the electron in kg
h=6.625*10^-34//Plancks constant in J.s
c=(3*10^8)//Velocity of light in m/s

//Calculations
dl=((h*(1-cosd(q)))/(m*c))/10^-10//The Compton angle in degrees

//Output
printf('The Compton shift is %3.3f angstroms',dl)
