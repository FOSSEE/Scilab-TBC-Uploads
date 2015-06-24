
// Scilab code Ex6.8: Pg 211 (2005)
clc; clear;
c = 1;      // Assume speed of light to be unity, m/s
L = 0.200;  // Width of the potential well, nm
h_cross = 197.3;    // Reduced Planck's constant, eV.nm/c^2
m = 511e+03;          // Mass of an electron, eV/c^2
U = 100;    // Height of potential well, eV
delta = h_cross/sqrt(2*m*U);    // Decay length of electron, nm
L = L + 2*delta;    // Effective length of the infinite potential well, nm
E = %pi^2*(h_cross/c)^2/(2*m*L^2);  // Ground state energy of the electron with effective length, eV
U = U - E;  // New potential energy, eV
delta = h_cross/sqrt(2*m*U);    // New decay length of electron, nm
printf("\nThe ground state energy of an electron confined to the potential well = %4.2f eV", E);
printf("\nThe new decay length of the electron = %6.4f nm", delta);

// Result
// The ground state energy of an electron confined to the potential well = 6.58 eV 
// The new decay length of the electron = 0.0202 nm 
