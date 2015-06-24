// Scilab code Ex4.13: Pg 127-128 (2008)
clc; clear;
l_A = 0.25;                  // Mean length of cicuit A, m
l_B = 0.15;                  // Mean length of cicuit A, m
A_A = 11.5e-04;              // Cross-sectional area of circuit A, metre-square
A_B = 12e-04;                // Cross-sectional area of circuit B, metre-square
phi = 1.5e-03;               // Flux, Wb
N = 1000;                    // Number of turns
B_A = phi/A_A;              // Flux density linked with circuit A, T
B_B = phi/A_B;              // Flux density linked with circuit B, T
H_A = 1470;                 // Magnetic field strength of cicuit A( value taken from graph ), At/m
H_B = 845;                  // Magnetic field strength of cicuit B( value taken from graph ), At/m
// Snce H = F/l, solving for F 
F_A = H_A * l_A;                // Magnetic field strength of circuit A, At/m
F_B = H_B * l_B;                // Magnetic field strength of circuit B, At/m
F = F_A + F_B;                   // Total circuit m.m.f, At/m
I = F/N;                          // Coil current, A
printf("\Coil current in the magnetic circuit = %5.3f A", I);

// Result
//  Coil current in the magnetic circuit = 0.494 A 
