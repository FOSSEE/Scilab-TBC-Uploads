// Scilab code Ex6.9: Pg:261 (2008)
clc;clear;
mu_O = 1.55;    // Refractive index for an ordinary beam
mu_E = 1.54;    // Refractive index for an extra-ordinary beam
lambda = 5890e-08;    // Wavelength of light, cm
t = lambda/(4*(mu_O-mu_E));    // Thickness of quarter wave plate, cm
printf("\nThe thickness of a quarter wave plate for the crystal = %4.2e cm", t);

// Result 
// The thickness of a quarter wave plate for the crystal = 1.47e-003 cm 