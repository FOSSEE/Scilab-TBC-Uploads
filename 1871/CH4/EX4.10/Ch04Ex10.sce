// Scilab code Ex4.10: Pg:147 (2008)
clc;clear;
delta_D = 5e-002;    // Distance through which the screen is moved, m
delta_omega = 3e-005;    // Change in fringe width as a result of motion of screen, m
d = 1e-003/2;    // Half of the separation distance between the slits, m
// As delta_omega = lambda*delta_D/(2*d), solving for lambda
lambda = delta_omega*(2*d)/delta_D;    // Wavelength of light used, m
printf("\nThe wavelength of light used = %4d angstrom", lambda/1e-010);

// Result 
// The wavelength of light used = 6000 angstrom 
