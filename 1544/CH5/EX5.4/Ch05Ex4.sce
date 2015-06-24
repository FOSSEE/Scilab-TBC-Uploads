// Scilab code Ex5.4: Pg 149 (2008)
clc; clear;
v = 5;                                // Velocity, m^2
theta =(%pi/3);                       // Angle, degrees
phi = 1.6e-03;                        // Flux, Wb
l = 0.1;                              // Length of pole face, m
d = 0.4;                              // Breadth of pole face, m
A = l*d;                              // Cross-sectional area of pole face, m^2
B = phi/ A;                           // Flux density, T
e =( B*l*v)*sin(theta);               // Induced emf, V
printf("\nThe emf induced = %5.4f V", e);

// Result
// The emf induced = 0.0173 V
