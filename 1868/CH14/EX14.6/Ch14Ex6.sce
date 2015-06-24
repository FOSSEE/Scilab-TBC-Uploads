// Scilab code Ex14.6: Pg 519 (2005)
clc; clear;
// Part (a)
e = 1.6e-19;    // Charge on electron, C
k = 8.99e-09;    // Coulomb constant, N-m^2/C^2
r = 1.0e-14;   // Distance between two duetrons, m
// We have U = (k*q1*q2)/r, for duetrons q1 = q2 = e, therefore we get
U = (k*e^2)/r;    // Potential energy of duetrons, J
E_C = 1.1e-014;    // The coulomb energy per deutron, J
k_B = 1.38e-023;    // Boltzmann constant, J/mol/K
T = 2/3*E_C/k_B;    // Effective temperature required for deutron to overcome the potential barrier, K
printf("\nThe potential energy of two duetrons separated by the distance of %1.0de-14 m = %4.2f MeV", r*1e+14, (U*1e+12)/e);
printf("\nThe effective temperature required for deutron to overcome the potential barrier = %3.1e K", T);

// Result
// The potential energy of two duetrons separated by the distance of 1e-14 m = 0.14 MeV
// The effective temperature required for deutron to overcome the potential barrier = 5.3e+008 K 
// Result
// The potential energy of two duetrons separated by the distance of 1e-14 m = 0.14 MeV 