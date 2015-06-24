// Scilab code Ex8.5: Pg.328 (2008)
clc; clear;
M = 1;    // Atomic weight of hydrogen, u
T = 5800;    // Temperature at sun's surface, K
lamda = 656.3;    // Wavelength of H_alpha line, nm
delta = 0.72e-06*lamda*sqrt(T/M);    // Broadening of spectral lines, nm
printf("\nThe broadening of spectral lines = %5.3f nm", delta);

// Result
// The broadening of spectral lines = 0.036 nm 