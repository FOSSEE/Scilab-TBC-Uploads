// Scilab code Ex4.6: Pg.164 (2008)
clc; clear;
n_i = 4;    // Initial state
n_f = 2;    // Final state
R = 1.097e+07;    // Rydberg constant, per m
lamda = 1/(R*(1/n_f^2 - 1/n_i^2));     // Wavelength of H_beta line, m
printf("\nThe wavelength of H_beta line = %3d nm", lamda/1e-009);

// Result
// Wavelength of H_beta line = 486 nm