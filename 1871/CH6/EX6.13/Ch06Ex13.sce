// Scilab code Ex6.13: Pg:262 (2008)
clc;clear;
mu_O = 1.65;    // Refractive index for an ordinary beam
mu_E = 1.48;    // Refractive index for an extra-ordinary beam
lambda = 6000e-08;    // Wavelength of light, cm
t = lambda/(2*(mu_O - mu_E));    // Thickness of doubly refracting crystal, cm
printf("\nThe thickness of the doubly refracting crystal = %4.2e cm", t);

// Result 
// The thickness of the doubly refracting crystal = 1.76e-004 cm