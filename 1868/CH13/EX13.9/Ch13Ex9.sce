// Scilab code Ex13.9: Pg 487 (2005)
clc; clear;
Z = 86;     // Atomic number of radon
A = 222;    // Mass number of radon
k = 9e+09;  // Coulomb constant, N-metre square per C-square
e = 1.6e-019;   // Charge on an electron, C
r0 = 7.25e-015; // Bohr radius for alpha particle, m
E0 = k*e^2/(2*r0*1e+06*e);  // Rydberg energy, MeV
R = 1.2e-015*A^(1/3);    // Radius of radon nucleus, fm
E = 5;  // Disintegration energy during alpha decay, MeV
T_E = exp(-4*%pi*Z*sqrt(E0/E)+8*sqrt(Z*R/r0));  // Decay probability for alpha disintegration
printf("\nThe decay probability for alpha disintegration at %d MeV energy = %4.2e", E, T_E);

// Result
// The decay probability for alpha disintegration at 5 MeV energy = 1.29e-34  
