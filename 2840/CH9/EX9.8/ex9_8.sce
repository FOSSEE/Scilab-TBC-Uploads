clc;
clear all;
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in Js
c = 3e8; // Velocity of light in vaccum
lambda = 0.5e-10; // Wavelength of light in meters
theta = 90;
delta = (h*(1-cosd(theta)))/(m*c);
Nlambda = lambda + delta;
E = (h*c)*((1/lambda)-(1/Nlambda)) ;
disp('J',E,'Energy of electron is ');
