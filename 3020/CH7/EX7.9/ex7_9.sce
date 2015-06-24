clc;
clear all;
b = 1.5e-3; // Mean fringe in meters
lambda = 589.3e-9; // Wavelength of light in meters
l = 4.5e-2; // Length of air wedge in meters
t = (lambda*l)/(2*b);//The thickness of wire 
disp('m',t,'The thickness of wire is')
