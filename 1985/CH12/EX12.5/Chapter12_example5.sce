clc
clear
//Input data
W=2.2//Work function of sodium in eV
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
v=(W*e)/h//Frequency in Hz
l=(c/v)/10^-10//The threshold wavelength in angstroms

//Output
printf('The threshold wavelength of the metal is %3.0f angstroms',l)
