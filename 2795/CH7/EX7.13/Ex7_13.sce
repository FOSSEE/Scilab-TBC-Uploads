// Scilab Code Ex7.13: Page-265 (2014)
clc; clear;
a0 = 1;    // For simplicity assume bohr radius to be unity
P = integrate('4/a0^3*exp(-2*r/a0)*r^2', 'r', a0, 10);
printf("\nThe probability of the electron in the 1s state of the hydrogen atom = %4.2f", P);

// Result
// The probability of the electron in the 1s state of the hydrogen atom = 0.68 