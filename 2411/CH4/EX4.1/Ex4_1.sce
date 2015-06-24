// Scilab Code Ex4.1: Page-233 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
v = 3e+004;    // Speed of earth, m/s
d = 7;    // Effective length of each path, m
lambda = 7000e-010;    // Wavelength of light used, m
n = 2*d*v^2/(lambda*c^2);    // Fringe shift
printf("\nThe expected fringe shift = %3.1f", n);

// Result
// The expected fringe shift = 0.2 