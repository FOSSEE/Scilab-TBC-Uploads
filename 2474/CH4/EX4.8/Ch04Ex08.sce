// Scilab code Ex4.8: Pg.171-172 (2008)
clc; clear;
n = 2;     // Orbit number
R_i = 1.097e+07;    // Rydberg constant, per m
Z = 42;    // Atomic number of Mo
lamda = 1/(R_i*(Z-1)^2*(1-1/n^2));
printf("\nThe wavelength of K-alpha line of Molybdenum = %6.4f nm", lamda/1e-009);

// Result
// The wavelength of K-alpha line of Molybdenum = 0.0723 nm 