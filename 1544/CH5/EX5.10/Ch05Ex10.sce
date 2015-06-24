// Scilab code Ex5.10: Pg 155 (2008)
clc; clear;
N = 80;                                 // Number of turns
l = 0.02;                               // Length of coil, m
r = 0.012;                              // Radius of coil, m
I = 45e-06;                              // Current in coil, A
T = 1.4e-06;                              // Torque exerted on coil, Nm
A = l*r;                                  // Cross-sectional area of coil, m^2
// Since T = 2*B*I*l*r, solving for B
B = T/(2*A*N*I);                             // Flux density, T
printf("\nThe flux density produced by the pole pieces = %4.2f T", B);

// Result
// The flux density produced by the pole pieces = 0.81 T
