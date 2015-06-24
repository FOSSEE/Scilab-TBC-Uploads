// Scilab code Ex4.25 : Pg:167 (2008)
clc;clear;
lambda = 5880e-008;    // Wavelength of light, cm
mu = 1.5;    // Refractive index of mica
r = 60;    // Angle of reflection in the plate, degree
n = 1;    // Order of fringes for the smallest thickness
t = n*lambda/(2*mu*cosd(r));    // The smallest thickness of the glass plate, cm
printf("\nThe smallest thickness of the glass plate = %4.0f angstrom", t/1e-008);

// Result 
// The smallest thickness of the glass plate = 3920 angstrom 