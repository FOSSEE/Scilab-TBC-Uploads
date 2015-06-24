clc;
clear all;
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in Js
c = 3e8; // Velocity of light in vaccum
lambda = 1.12e-10; // Wavelength of light in meters
theta = 90;
delta = (h*(1-cosd(theta)))/(m*c);
Nlambda = lambda + delta;//The wavelength of scattered X-rays 
E = (h*c)*((1/lambda)-(1/Nlambda)) ;//Energy of electron
disp('meters',Nlambda,'The wavelength of scattered X-rays is');
disp('J',E,'Energy of electron is ');
 
