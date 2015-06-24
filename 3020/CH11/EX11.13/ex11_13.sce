clc;
clear all;
c = 3e8; // Velocity of light in air
h = 6.626e-34 ; // Planck's constant
e = 1.609e-19; // Charge of an electron
Eg = 3.0*e ; // Band gap of given GaAs semiconductor in joule
lambda = ((h*c)/Eg)*1e6; // Wavelength of emitted from given GaAs semicinductor is 
disp('um',lambda,'Wavelength of emitted from given GaAs semicinductor is')
