// Scilab code Ex4.5: Pg.158-159 (2008)
clc; clear;
e = 1.6e-19;    // Charge on electron, C
k = 9e+09;     // Coulomb's constant, N-m^2/C^2
q_a = 2*e;     // Charge on alpha particle, C
Q = 79;    // Total charged particles in Au, C
r_d = 6.6e-15;    // Radius of Au nucleus, m
E_k = k*q_a*Q/r_d;    // The kinetic energy of alpha particle for distance of closest approach to the gold nucleus, eV
printf("\nThe kinetic energy of alpha particle for distance of closest approach to the gold nucleus = %4.1f MeV", E_k/1e+06);

// Result
// The kinetic energy of alpha particle for distance of closest approach to the gold nucleus = 34.5 MeV 