// Scilab code Ex5.9: Pg 178 (2005)
clc; clear;
delta_x = 1.0e-14/2;                     // Uncertainity in position of electron, m
q = 1.6e-19;                           // Charge on electron, C
h_cross = 1.05e-34;                // Reduced Plank's constant, J-s
c = 3e+08;                         // Velocity of light, m/s
delta_p_x = (h_cross*c)/(2*delta_x*q);                     // Uncertainity in momentum, eV/c
E_r = 0.551e+06;                         // Rest mass energy if electron, eV
E = sqrt((delta_p_x)^2 + (E_r)^2);
K = E - E_r;                           // Kinetic energy of electron within nucleus, eV
printf("\nKinetic energy of electron within nucleus = %4.1f MeV", K/1e+06);

// Result
// Kinetic energy of electron within nucleus = 19.1 MeV
