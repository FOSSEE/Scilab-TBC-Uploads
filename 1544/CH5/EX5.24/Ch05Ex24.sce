// Scilab code Ex5.24: SPg 182 (2008)
clc; clear;
N_A = 2000;                                 // Number of turns in a coil A
N_B = 1500;                                 // Number of turns in a coil B
I_A = 0.5;                                  // Electric current in coil A, A
phi_A = 60e-06;                             // Flux linked with coil A, Wb
// Part (a)
L_A = (N_A*phi_A)/I_A;                      // Self-inductance of coil A
phi_B = 0.83*(60e-06);                     // Flux linked with coil B, Wb
// Part (b)
M = (N_B*phi_B)/I_A;                        // Mutual inductance of the two coils, H
printf("\nSelf-inductance of coil A = %4.2f H", L_A)
printf("\nMutual inductance of the two coils = %5.3f H", M)

// Result
// Self-inductance of coil A = 0.24 H
// Mutual inductance of the two coils = 0.149 H
