// Scilab Code Ex9.2 Page:278 (2006)
clc; clear;
H0 = 1970;    // Critical field at absolute zero, Oe
T_c = 9.25;    // Transition temperature of specimen  Nb, Kelvin
T = 4;    // Temperature at which destruction of superconductivity is to be found, Kelvin
H_c = H0*[1-(T/T_c)^2];    // Limiting magnetic field, Oe
printf("\nLimiting magnetic field of Nb to serve as superconductor = %4d Oe", round(H_c));

// Result 
// Limiting magnetic field of Nb to serve as superconductor = 1602 Oe 
