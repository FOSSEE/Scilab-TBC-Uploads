// Scilab code Ex5.13: Pg:224 (2008)
clc;clear;
n_1 = 1;    // First order diffraction
n_2 = 2;    // Second order diffraction
Lambda_1 = 5890;    // First wavelength of sodium light, Angstorm
Lambda_2 = 5896;    // Second wavelength of sodium light, Angstorm
Lambda = (Lambda_1 + Lambda_2)/2;    // Mean wavelength, angstorm
d_Lambda = Lambda_2 - Lambda_1;    // Difference in wavelength, Angstorm
N1 = Lambda_1/(n_1*d_Lambda);    // Number of lines in a plane diffraction grating required to just resolve the sodium doublet in the first order
N2 = Lambda_2/(n_2*d_Lambda);    // Number of lines in a plane diffraction grating required to just resolve the sodium doublet in the second order
printf("\nThe minimum number of lines in the plane diffraction grating in the first and second order spectra respectively are %d and %d", ceil(N1), N2);

// Result 
// The minimum number of lines in the plane diffraction grating in the first and second order spectra respectively are 982 and 491 