clc;
clear all;
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in J.s
c = 3e8; // Velocity of light in vaccum
lambda = 1.8e18; // Frequency of the incident rays
theta = 180;//angle in degree
lambda = c/lambda;
delta = (h*(1-cosd(theta)))/(m*c);
Nlambda = lambda+delta;//'Wavelength of scattered X-rays
disp('meter',Nlambda,'Wavelength of scattered X-rays is ');
