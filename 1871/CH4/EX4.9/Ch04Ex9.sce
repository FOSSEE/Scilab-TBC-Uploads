// Scilab code Ex4.9: Pg:147 (2008)
clc;clear;
D = 1000;    // Distance between the source and the screen, mm
omega = 1;    // For simplicity assume fringe width to be unity, mm
x9 = 9*omega;    // Position of 9th bright fringe, mm
x2_prime = 3/2*omega;    // Position of 9th bright fringe, mm
d = 0.5/2;    // Separation between the slits, mm
l = 8.835;    // Distance between 9th bright fringe and second dark fringe
// As x9 - x2_prime = 9*omega-3/2*omega = l, solving for omega
omega = l/(x9 - x2_prime);    // Fringe width, mm
lambda = omega*2*d/D;    // Wavelength of light used, mm
printf("\nThe wavelength of light used = %4d angstrom", lambda/1e-007);

// Result 
// The wavelength of light used = 5890 angstrom 
