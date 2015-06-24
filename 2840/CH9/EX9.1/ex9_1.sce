clc;
clear all;
e = 1.6e-19; // Charge of electron in Coloumb
lambda = 2e-10; // Wavelength of a photon in meters
h = 6.62e-34; // Planc's constant in Joule second
c = 3e8; // Velocity og light in air in meter per second
E = (h*c)/(lambda*e);//Thermal conductivity of Ni
p = h/lambda;//The momentum of photon 
disp('eV',E,'The energy of photon is ');
disp('(kg.m)/s',p,'The momentum of photon is ');
