// Scilab code Ex5.22: Pg:230 (2008)
clc;clear;
Lambda_1 = 6708e-008;    // Wavelength, Angstorm
Lambda_2 = 6438e-008;    // wavelength, Angstorm
n = 2;    // Order of diffraction
mu_1 = 1.5400;    // Refractive index index of material
mu_2 = 1.5412;    // Refractive index index of material
D = (mu_2 - mu_1)/(Lambda_1 - Lambda_2);    // Dispersion of the material of the grating, per cm
aplusb = n/D;    // Size of the grating interval, cm
printf("\nThe size of the grating interval = %3.1e cm", aplusb);

// Result 
// The size of the grating interval = 4.5e-003 cm
// The answer is given wrong in the textbook