// Scilab Code Ex5.9: Page-180 (2006)
clc; clear;

gamma_expt = 7.0e-04;   // Experimental value of electronic specific heat, cal/mol/K-square
gamma_theory = 3.6e-04;   // Theoretical value of electronic specific heat, cal/mol/K-square
L = poly(0, 'L');
L = roots(gamma_expt - gamma_theory*(1 + L));
printf("\nThe electron-phonon coupling constant of superconductor = %3.1f", L);

// Result
// The electron-phonon coupling constant of superconductor = 0.9 
