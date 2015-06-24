// Scilab code Ex7.4: Pg.294 (2008)
clc; clear;
delta_E = 4.5e-05;    // Energy splitting, eV
mew_B = 5.79e-05;    // Bohr magneton, eV/T
B = delta_E/(2*mew_B);    // Magnetic field, T
printf("\nThe magnetic field experienced by 2p electron in hydrogen= %4.2f T", B);

// Result
// The magnetic field experienced by 2p electron in hydrogen = 0.39 T