// Scilab code Ex5.11: Pg 158 (2008)
clc; clear;
d = 0.035;                      // Distance between two parallel conductors, m
I_1 = 50;                       // Electric current in first coil, A
I_2 = 40;                      // Electric current in second coil, A
F = ((2e-07)*I_1*I_2)/d;         // Force exerted by conductors, N
printf("\nThe force exerted between the conductors = %4.1f mN", F/1e-03);

// Result
// The force exerted between the conductors = 11.4 mN
