clc;
clear all;
lambda = 1.5418e-10; // Wavelength of X-rays in meters
theta = 30; // Angle of diffracted angle in degrees
h = 1; //Miller indices of diffracted plane 
k = 1; //Miller indices of diffracted plane
l = 1;// Miller indices of diffracted plane
d = lambda/(2*sind(30));// Interplanar Distance for first order diffraction
a = d*sqrt(h^2+k^2+l^2);// Lattice constant
disp('m',a,'The value of lattice constant is')
