// Scilab code Ex5.22: Pg 178 (2008)
clc; clear;
I_1 = 8;                                   // Electric current, A
I_2 = 2;                                   // Electric current, A
N = 3000;                                 // Number of turns in a coil
phi_1 = 4e-03;                            // Flux, Wb
delta_t = 0.1;  // Reversal time of current, s
L  = (N * phi_1)/I_1;                    // Self-inductance, H
delta_I = I_1 - I_2;                        // Change in current, A
e = ((L)*delta_I)/(delta_t);        // Induced emf, V
printf("\nThe emf induced in the coil = %2d volts", e);

// Result
// The emf induced in the coil = 90 V
