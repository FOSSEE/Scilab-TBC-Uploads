// Scilab code Ex5.21: Pg 178 (2008)
clc; clear;
N = 150;                             // Number of turns in a coil
I = 10;                              // Electric current flowing through coil, A
phi = 0.10;                          // Flux, Wb
delta_t = 0.1;                       // Time, s
// Part (a)
L  = (N * phi)/I                    // Self-inductance, H
delta_I = 20;                        // Change in current, A
// Part (b)
e = abs((-L*delta_I)/(delta_t));        // Induced emf, V
printf("\nThe inductance of the coi = %3.1f H", L);
printf("\nThe emf induced in the coil = %2d V", e);

// Result
// The inductance of the coi = 1.5 H
// The emf induced in the coil = 300 V
