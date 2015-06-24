// Scilab code Ex6.11: Pg:261 (2008)
clc;clear;
mu_O = 1.55336;    // Refractive index for an ordinary beam
mu_E = 1.54425;    // Refractive index for an extra-ordinary beam
lambda_O = 5.893e-05;    // Wavelength of ordinary light, cm
lambda = 4.358e-005;    // Given wavelength of light, cm
PR = 2*%pi/lambda*lambda_O/4;    // The phase retardation in quarter wave plate for given wavelength
printf("\nThe phase retardation in quarter wave plate for given wavelength = %4.2f pi-radian", PR/%pi);

// Result 
// The phase retardation in quarter wave plate for given wavelength = 0.68 pi-radian 