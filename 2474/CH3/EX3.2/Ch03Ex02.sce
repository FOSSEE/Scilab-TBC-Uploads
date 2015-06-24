// Scilab code Ex3.2: Pg.125 (2008)
clc; clear;
T = 5800;    // Temperature of sun, K
b = 2.898e-003; // Wein's constant, m-K
lamda_m = b/T;    // Peak wavelength of solar spectrum, m
printf("\nPeak wavelength of solar spectrum = %5.1f nm", lamda_m/1e-009);

// Result
// Peak wavelength of solar spectrum = 499.7 nm