// Scilab Code Ex1.13: Page-1.17 (2009)
clc; clear;
theta = 45;     // Diffraction angle, degrees
h = 6.626e-034;     // Planck's constant
m = 1.67e-027;      // Mass of a neutron, kg
n = 1;      // Order of diffraction
k = 1.38e-023;  // Boltzmann constant, J/mol/K
T = 27+273;     // Absolute room temperature, K
E = 3/2*k*T;    // Energy of the neutron, J
lambda = h/sqrt(2*m*E); // de-Broglie wavelength of neutrons, m
// From Bragg's law, 2*d*sin(theta) = n*lambda, solving for d
d = n*lambda/(2*sind(theta));
printf("\nThe interplanar spacing of the crystal = %4.2f angstrom", d/1e-010);

// Result 
// The interplanar spacing of the crystal = 1.03 angstrom 
