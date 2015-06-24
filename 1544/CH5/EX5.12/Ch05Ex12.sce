// Scilab code Ex5.12: Pg 158 (2008)
clc; clear;
d = 2;                           // Distance between two parallel conductors, m
I_1 = 1000;                     // Electric current in first coil, A
I_2 = 300;                      // Electric current in second coil, A
mew_o = 4*(%pi)*1e-07;          // Permeability for free space
B = (mew_o*I_1)/d;              // Flux density due to first coil, T
F = ((2e-07)*I_1*I_2)/d;         // Force exerted by conductors, N
printf("\nThe flux density at a distance of %1d m from the centre of a conductor carrying a current of %4d A = %5.3f mT", d, I_1, B/1e-03);
printf("\nForce exerted by conductors = %2d mN", F/1e-03);

// Result
// The flux density at a distance of 2 m from the centre of a conductor carrying a current of 1000 A = 0.628 mT
// Force exerted by conductors = 30 mN
