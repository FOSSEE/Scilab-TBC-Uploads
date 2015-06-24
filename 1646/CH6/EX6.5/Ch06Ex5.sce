// Scilab Code Ex6.5: Page-371 (2011)
clc;clear;
lambda = 3.6e-011;....// Wavelength of X-rays, m
n = 1;    // Order of diffraction
theta = 4.8;    // Angle of diffraction, degrees
// Braggs equation for X-rays is n*lambda = 2*d*sin(theta), solving for d
d = n*lambda/(2*sind(theta));    // Interplanar spacing, m
printf("\nThe interplanar separation of atomic planes in the crystal = %4.2f angstrom", d/1e-010);

// Result
// The interplanar separation of atomic planes in the crystal = 2.15 angstrom 