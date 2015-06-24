// Scilab code Ex5.21: Pg:229 (2008)
clc;clear;
mu_C = 1.6389;    // Refractive index index of material
mu_F = 1.7168;    // Refractive index index of material
Lambda_C = 6563e-008;    // Wavelength of C Sodium light, Angstorm
Lambda_F = 4861e-008;    // Wavelength of F Sodium light, Angstorm
Lambda = 5e-05;    // Wavelength of light, cm
t = 3;    // Length of base of a flint glass prism, cm 
// Since the resolving power of a spectrometer is given by Lambda/d_Lambda. Thus
D = (mu_F - mu_C)/(Lambda_C - Lambda_F);    // Dispersion of material of the prism
d_Lambda = Lambda/(t*D);    // Resolving power of a prism
printf("\nThe smallest difference of wavelengths resolved by the flint glass prism = %4.2f angstrom", d_Lambda/1e-008);

// Result 
// The smallest difference of wavelengths resolved by the flint glass prism = 0.36 angstrom 
// The answer is given wrong in the textbook