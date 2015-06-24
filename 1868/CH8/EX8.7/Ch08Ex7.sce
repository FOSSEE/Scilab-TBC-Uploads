// Scilab code Ex8.7: Pg 281 (2005)
clc; clear;
k = 9e+09;  // Coulomb constant, N/Sq.m/C
e = 1.6e-019;   // Electronic charge, C
a_0 = 0.529e-010;   // Bohr's radius, m
n = 2;  // Principal quantum number
l = [0, 1]; // Orbital quantum number
m_l = [-1, 0, 1];    // Orbital magnetic quantum number
Z = 1;  // Atomic number of hydrogen
E2 = -k*e^2/(2*a_0)*Z^2/n^2;   // Energy of first excited level of hydrogen, 
printf("\nThe energy of first excited level of hydrogen = %3.1f eV", E2/e);

// Result
// The energy of first excited level of hydrogen = -3.4 eV 

