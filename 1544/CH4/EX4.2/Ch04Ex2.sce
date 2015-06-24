// Scilab code Ex4.2: Pg 116 (2008)
clc; clear;
A = 45e-06;                    // Cross sectional area of pole face, metre-square
B = 0.6;                      // Flux density, T
// Using formula B = phi/A, solving for phi
phi = B*A;                   // Flux, Wb
printf("\nThe flux produced by pole face = %2d micro-wWb", phi/1e-06);

// Result 
//The flux produced by pole face = 27 micro-Wb 
