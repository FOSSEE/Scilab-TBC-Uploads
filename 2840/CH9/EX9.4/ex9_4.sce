clc;
clear all;
h = 6.62*1e-34; // Plancl's constant in J.s
c = 3*1e8; // Velocity of light in vacccum in m/s 
m = 9.1*1e-31; // Mass of electron in Kg
lambda = 0.7078*1e-10 // Wavelength in meter
theta = 90;
delta = (h*(1-cosd(theta))/(m*c));
Nlambda = lambda + delta;
disp('meter',Nlambda,'The wavelength of scattered X-rays is ');
