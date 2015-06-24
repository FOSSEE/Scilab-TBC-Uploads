// Scilab Code Ex5.11: Page-181 (2006)
clc; clear;
gamma_expt = 4.84;   // Experimental value of electronic specific heat of metal, mJ/g-atom/K-square
gamma_theory = 2.991;   // Theoretical value of electronic specific heat of metal, mJ/g-atom/K-square
L = poly(0, 'L');
L = roots(gamma_expt - gamma_theory*(1 + L));
printf("\nThe electron-phonon coupling constant for metal = %5.3f", L);

// Result
// The electron-phonon coupling constant for metal = 0.618
