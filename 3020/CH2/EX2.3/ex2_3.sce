clc;
clear all;
sigma = 1.26e-3; // Density of medium in Kg per cube meter
n = 2e-5; // Viscosity of the medium in Ns/m^2
r = 0.2e-2; // Radius of the body in meters
rho = 8e-3; // Density of the body in Kg/m^3
g = 9.8;// Gravitational constant
v = (2*r^2*(rho-sigma)*g)/(9*n);
disp('m/s',v,'The terminal velocity of the spherical body is ')
// // there is slight Variation in answer.In textbook there is mistake in book..checked in calculator also...

