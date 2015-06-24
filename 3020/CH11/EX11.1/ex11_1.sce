clc;
clear all;
lambda = 5900e-10; // Wavelength of the sodium D line in meters
c = 3e8;// Velocity of air
h = 6.626e-34; // Plancks constant
e = 1.602e-19; // Charge of an electron
E = (h*c)/(lambda*e);
disp('eV',E,'The energy of the first excited state is')
