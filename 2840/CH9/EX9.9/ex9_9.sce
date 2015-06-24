clc;
clear all;
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in Js
c = 3e8; // Velocity of light in vaccum
lambda = 1.5e-10; // Wavelength of light in meters
E = 0.5e-16; // Energy of electron in J 
Nlambda = ((h*c)/lambda)-E;//'Energy of scattered electron
disp('J',Nlambda,'Energy of scattered electron is ');
