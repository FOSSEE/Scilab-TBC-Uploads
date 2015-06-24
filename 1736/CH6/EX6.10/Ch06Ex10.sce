// Scilab Code Ex6.10: Page-200 (2006)
clc; clear;
x = 0.38;   // Al concentration in host GaAs
E_g = 1.424 + 1.266*x + 0.266*x^2;    // Band gap of GaAs as a function of x, eV
printf("\nThe energy band gap of 38 percent Al doped in GaAs = %5.3f eV", E_g);

// Result 
// The energy band gap of 38 percent Al doped in GaAs = 1.943 eV 
