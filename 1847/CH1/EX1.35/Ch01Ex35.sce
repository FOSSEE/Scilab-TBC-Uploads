// Scilab Code Ex1.35:: Page-1.46 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
l = 9.5e-010;   // Length of one dimensional potential box, m

// First energy level
n = 1;     // The first energy state of electron
E1 = h^2*n^2/(8*m*l^2);    // Energy of the electron in first state, J

// Second energy level
n = 2;     // The second energy state of electron
E2 = h^2*n^2/(8*m*l^2);    // Energy of the electron in second state, J

// Third energy level
n = 3;     // The third energy state of electron
E3 = h^2*n^2/(8*m*l^2);    // Energy of the electron in third state, J

printf("\nThe energy of the electron in first state  = %4.1e J", E1);
printf("\nThe energy of the electron in second state  = %4.1e J", E2);
printf("\nThe energy of the electron in third state  = %4.1e J", E3);

// Result 
// The energy of the electron in first state  = 6.6e-20 J
// The energy of the electron in second state  = 2.7e-19 J
// The energy of the electron in third state  = 6.0e-19 J 
