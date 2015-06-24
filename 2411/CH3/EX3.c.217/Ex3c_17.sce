// Scilab Code Ex3c.17: Page-189 (2008)
clc; clear;
lambda = 5893e-010;    // Wavelength of light used, m
mu = 1.5;    // Refractive index of glass film
r = 60;    // Angle of reflection in the film, degree
t = lambda/(2*mu*cosd(r));    // Smallest thickness of the 
printf("\nThe smallest thickness of the glass film when it appears dark = %6.1f angstrom", t/1e-010);

// Result
// The smallest thickness of the glass film when it appears dark = 3928.7 angstrom 