// Scilab Code Ex1.36:: Page-1.47 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
l = 2.5e-010;   // Length of one dimensional potential box, m

// First energy level
n = 1;     // The lowest energy state of electron
E1 = h^2*n^2/(8*m*l^2);    // Energy of the electron in first state, J

// Second energy level
n = 2;     // The second energy state of electron
E2 = h^2*n^2/(8*m*l^2);    // Energy of the electron in second state, J

printf("\nThe energy of the electron in lowest state  = %5.2f eV", E1/e);
printf("\nThe energy of the electron in second state  = %5.2f eV", E2/e);


// Result 
// The energy of the electron in lowest state  =  5.98 eV
// The energy of the electron in second state  = 23.93 eV 
