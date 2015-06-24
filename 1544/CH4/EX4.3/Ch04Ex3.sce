// Scilab code Ex4.3: Pg 117 (2008)
clc; clear;
N = 1500;                      // Number of turns in a coil
A = 5e-04;                     // Cross- sectional area of of coil, metre-square
phi = 0.2e-03;                 // Flux, Wb
I = 0.75;                      // Coil-current, A
// Since m.m.f is the product of the current and the number of turns, therefore, we have
F = N*I;                      // Magnetomotive force, At
B = phi/A;                    // Flux density, T
printf("\The m.m.f and flux density produced are %4d At and %3.1f T respectively", F, B);

// Result
// The m.m.f and flux density produced are 1125 At and 0.4 T respectively

