clc;
clear all;
Eg = 1.8*1.609e-19; // Bandwidth of given LED
h = 6.626e-34; // Planck's Constant
c = 3e8;
lambda = ((h*c)/Eg)*1e6;
disp('um',lambda,'The wavelength of light emitted from LED is') 
