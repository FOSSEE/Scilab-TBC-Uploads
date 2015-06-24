// Scilab code Ex6.14: Pg:262 (2008)
clc;clear;
mu_O = 1.544;    // Refractive index for an ordinary beam
mu_E = 1.553;    // Refractive index for an extra-ordinary beam
lambda = 6000e-08;    // Wavelength of light, cm
t = lambda/(2*(mu_E - mu_O));    // Thickness of doubly refracting crystal, cm
printf("\nThe thinnest possible quartz = %4.2e cm", t);
printf("\nThe thicknesses which would give the same result are %4.2e cm, %4.2e cm, %4.2e cm,...", t, 3*t, 5*t);

// Result 
// The thinnest possible quartz = 3.33e-003 cm
// The thicknesses which would give the same result are 3.33e-003 cm, 1.00e-002 cm, 1.67e-002 cm,...
