// Scilab Code Ex5.1 :Page-167 (2013)
clc; clear;
N_A = 6.022e+23;    // Avogdaro's No., per mole
n = 1;    // Order of diffraction
M = 58.5;    // Molecular mass of NaCl, g/mol
rho = 2.16;    // Density of rock salt, g/cc
two_theta = 20;   // Scattering angle, degree 
theta = two_theta/2;    // Diffraction angle, degree
N = N_A*rho*2/(M*1e-006); // Number of atoms per unit volume, per metre cube   
d = (1/N)^(1/3);  // Interplanar spacing of NaCl crystal, m 
lambda = 2*d*sind(theta)/n ;    // Wavelength of X-rays using Bragg's law, m
printf("\nThe wavelength of the incident X rays  = %5.3f nm", lambda/1e-009);

// Result
// The wavelength of the incident X rays  = 0.098 nm 
