clc;
clear all;
T = 523; // Temperature in kelvin
c = 3e8;// Velocity of air
h = 6.626e-34; // Planck's constant
k = 1.38e-23; // Boltzmann's constant
e = 1.602e-19; // Charge of an electron
lambda = 5900e-10; // Wavelength of light in meters
r = exp(-((h*c)/(k*T*lambda))); // R =(N2/N1) Ratio between the atoms in the first excited state and ground state
disp('',r,'Ratio between the atoms in the first excited state and ground state')
