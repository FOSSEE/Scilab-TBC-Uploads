// Scilab Code Ex7.16: Page-383 (2008)
clc; clear;
M = 58.5    // Gram atomic mass of NaCl, kg/mole
N = 6.023e+026;    // Avogadro's number per kmol
rho = 2.17e+003;    // Density of NaCl, kg/metre-cube
m = M/N;    // Mass of each NaCl molecule, g
V = m/rho;    // Volume of each NaCl molecule, metre-cube
d = (V/2)^(1/3)/1e-010;    // Atomic apacing in the NaCl crystal, angstrom
theta = 26;    // Bragg's angle, degree
n = 2;    // Order of diffraction
lambda = 2*d*sind(theta)/n;    // Wavelength of X rays, m
printf("\nThe grating spacing of rock salt = %4.2f angstrom", d);
printf("\nThe wavelength of X rays = %4.2f angstrom", lambda);

// Result
// The grating spacing of rock salt = 2.82 angstrom
// The wavelength of X rays = 1.24 angstrom 