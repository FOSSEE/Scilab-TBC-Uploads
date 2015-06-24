// Scilab code Ex5.18: Pg 176 (2008)
clc; clear;
L = 0.25;                                           // Self-inductance, H
delta_I = 250e-03;                                  // Change in current, A
delta_t = 25e-03;                                  // Time, s
e = ((-L)*delta_I)/(delta_t);                      // Induced emf, V
printf("\nThe value of emf induced = %3.1f V", e);

// Result
// The value of emf induced = 2.5 V
