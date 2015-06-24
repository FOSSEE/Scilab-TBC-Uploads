// Scilab code Ex5.26: Pg 183 (2008)
clc; clear;
L_1 = 65e-03;                         // Self-inductance of first coil, H
delta_I = 1.5;                        // Change in current, A
delta_t = 3e-03;                      // Time, s
k = 0.95;                             // 95 percent of flux produced
N_1 = 400;                                 // Number of turns in a coil A
N_2 = 650;                                 // Number of turns in a coil B 
// Part (a)
// Since self-inductance of a coil is directly proportional to the number of turns in a coil, therefore, we have L_2/L_1 = (N_2^2)/(N_1^2), solving for L_2
L_2 = (L_1*(N_2^2))/(N_1^2)          // Self-inductance of second coil , H
// Part (b)
M = k*sqrt(L_1*L_2);                 // Mutual inductance of two coils, H
// Part (c)
e_1 = ((L_1)*delta_I)/(delta_t);              // Induced emf in  first coil, V 
// Part (d)
e_2 = (M*delta_I)/delta_t;                     // Induced emf in  second coil, V 
printf("\nThe self-inductance of coil 2 = %3d mH", L_2/1e-03)
printf("\nThe value of mutual inductance = %3d mH", M/1e-03)
printf("\nThe self-induced emf in coil 1 = %4.1f V", e_1)
printf("\nThe mutually induced emf in coil 2 = %2d V", e_2)

// Result
// The self-inductance of coil 2 = 171 mH
// The value of mutual inductance = 100 mH
// The self-induced emf in coil 1 = 32.5 V
// The mutually induced emf in coil 2 = 50 V
