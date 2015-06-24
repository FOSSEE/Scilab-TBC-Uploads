clc
clear
//Input data
lo=6000*10^-10//Threshold wavelength in m
l=3600*10^-10//Wavelength of the light used in m
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
E=(h*c*((1/l)-(1/lo)))/e//Energy of the photoelectrons emitted in eV

//Output
printf('Energy of the photoelectrons emitted is %3.2f eV',E)
