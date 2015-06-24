// Scilab Code Ex4.4 : Page-4.14 (2004)
clc;clear;
theta = 30; // bragg's angle, degree
lambda = 1.5418e-10;    // X-ray wavelength, m
n = 1;       // Order of diffraction
d = (n*lambda)/(2*sind(theta));   // Wavelength from Bragg's law, nm
h = 1, k = 1, l = 1;  // plane
a = d*(h^2+k^2+l^2)^(1/2); // interatomic spacing, angstrom
printf("\nWavelength of X rays = %6.4e m ", d);
printf("\nInteratomic spacing = %5.3f angstrom", a/1e-10);

// Result 
// Wavelength of X rays = 1.5418e-10 m 
//  Interatomic spacing = 2.670 angstrom 
