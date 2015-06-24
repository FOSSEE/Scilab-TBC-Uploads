// Scilab code Ex4.1: Pg.150 (2008)
clc; clear;
R_H = 1.096776e+07;     // Rydberg constant for Hydrogen, per metre
// For Lymann series
m = 1;    // Integer value
n = 2;    // Integer value
lamda = 1/(R_H*(1/m^2 - 1/n^2));    // Wavelength of Lymann series, m
printf("\nThe wavelength of first line of Lymann series = %5.1f nm", lamda*1e+09);

// For Paschen series
m = 3;    // Integer value
n = 4;    // Integer value
lamda = 1/(R_H*(1/m^2 - 1/n^2));    // Wavelength of Paschen series, m
printf("\nThe wavelength of first line of Paschen series = %4d nm", lamda*1e+09);

// Result
// The wavelength of first line of Lymann series = 121.6 nm
// The wavelength of first line of Paschen series = 1875 nm 