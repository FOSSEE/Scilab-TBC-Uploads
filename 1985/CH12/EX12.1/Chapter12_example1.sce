clc
clear
//Input data
E=10//Energy of the photon in eV
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
l=((h*c)/(E*e))/10^-10//Wavelength of the photon in angstroms

//Output
printf('The wavelength of the photon is %3.0f angstroms',l)
