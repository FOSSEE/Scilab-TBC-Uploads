// Scilab code Ex3.4: Pg 83 (2005)
clc; clear;
phi = 2.38;    // Work function for sodium, eV
I = 1e-07;    // Absorbed light intensity, mJcm^2/s
A = %pi*1e-16;    // Cross-sectional area, m^2
t = phi*1.6e-16/(I*A)   // Time lag, days
printf("\nTime lag between start of illumination and photocurrent generation = %3.1fe+07 s", t*1e-07);

// Result
// Time lag between start of  illumination and photocurrent generation = 1.2e+07 s
