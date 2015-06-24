// Scilab code Ex6.10: Pg:261 (2008)
clc;clear;
mu_O = 1.55336;    // Refractive index for an ordinary beam
mu_E = 1.54425;    // Refractive index for an extra-ordinary beam
lambda = 5.893e-05;    // Wavelength of sodium light, cm
t = lambda/(4*(mu_O-mu_E));    // Thickness of quarter wave plate, cm
printf("\nThe thickness of the quarter wave plate for quartz = %4.2e cm", t);

// Result 
// The thickness of the quarter wave plate for quartz = 1.62e-003 cm 