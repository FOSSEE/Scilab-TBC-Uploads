// Scilab code Ex4.5: Pg 124 (2005)
clc; clear;
Z = 13;    // Atomic number of Aluminium
e = 1.6e-19;     // Charge on electron, C
k = 8.99e+09;     // Coulomb constant, Nm^2/C^2
K_a = 7.7e+06*e;    // Since K_a = (k*Z_e*2*e)/d_min, solving for d_min
d_min = (k*2*Z*e^2)/K_a;   // Radius of Aluminum, m
printf("\nRadius of Aluminum = %3.1e m", d_min);

// Result
// Radius of Aluminum = 4.9e-15 m
