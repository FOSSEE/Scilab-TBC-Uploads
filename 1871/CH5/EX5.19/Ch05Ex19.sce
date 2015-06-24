// Scilab code Ex5.19: Pg:229 (2008)
clc;clear;
t = 5;    // width of the base of the prism, cm
Lambda = 5000;    // wavelength, angstrom
D = 200;    // Rate of change of refractive index with wavelength, per cm
RP = t*D;    // Resolving power of a prism
d_Lambda = Lambda/(D*t);    // Smallest difference in wavelengths by a spectrometer, angstrom
printf("\nThe resolution of smallest difference of wavelengths by a spectrometer = %d angstrom", d_Lambda);

// Result 
// The resolution of smallest difference of wavelengths by a spectrometer = 5 angstrom