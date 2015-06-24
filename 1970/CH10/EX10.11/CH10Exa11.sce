// Scilab code Exa10.11 : : Page-458 (2011)
clc; clear;
lambda = sqrt(1.45e-021/(4*%pi));        // Wavelength, metre
W_ratio = 2.3e-07;                    // Width ratio
sigma = W_ratio*(4*%pi)*lambda^2*10^28;            // Scattering contribution, barn
printf("\nThe scattering contribution to the resonance = %4.2f barns", sigma);

// Result
// The scattering contribution to the resonance = 3.33 barns 
