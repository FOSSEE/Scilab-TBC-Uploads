clc;
clear all;
theta = 40; // Angle of wedge in s
b = 0.125e-2; // Fringe with in meters
lambda = (2*b*theta*(%pi/180)*(1/3600));//The wavelength of light used
lamda=lambda*1e10;//conversion in Angstrome
disp('m',lambda,'The wavelength of light used is ')
disp('Angstrom',lamda,'The wavelength of light used is ')
//rounding off value of lambda in meter due to scilab..
