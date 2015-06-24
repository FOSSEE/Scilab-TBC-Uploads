// Scilab code Ex4.26 : Pg:167 (2008)
clc;clear;
lambda = 4000e-008;    // Wavelength of light, cm
mu = 1.4;    // Refractive index of the film
r = 0;    // Angle of reflection in the plate, degree
n = 1;    // Order of firnges for the smallest thickness
t = n*lambda/(4*mu*cosd(r));    // The thickness of the thinnest film, cm
printf("\nThe thickness of the thinnest film for reflection from violet component = %4.1f angstrom", t/1e-008);

// Result 
// The thickness of the thinnest film for reflection from violet component = 714.3 angstrom 