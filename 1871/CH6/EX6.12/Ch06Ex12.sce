// Scilab code Ex6.12: Pg:262 (2008)
clc;clear;
t = 0.003;    // Thickness of the crystal slice, cm
Lambda = 6e-005;    // Wavelength of linearly polarized light, cm
d_mu = Lambda/(4*t);    // Difference in the refractive indices of two rays 
printf("\nThe difference in the refractive indices of two rays = %1.0e ", d_mu );

// Result 
// The difference in the refractive indices of two rays = 5e-003  