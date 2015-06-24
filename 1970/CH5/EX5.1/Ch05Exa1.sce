// Scilab code Exa5.1 : : Page 203 (2011)
clc; clear;
E_a = 8.766;    // Energy of the alpha particle, MeV
A = 212;          // Atomic mass of Po-212, amu
M_a = 4;         // Atomic mass of alpha particle, amu
e = 1.6e-019;        // Charge of an electron, coulomb
Z = 82;                // Atomic number of Po-212
R_0 = 1.4e-015;        // Distance of closest approach,metre
K = 8.99e+09;            // Coulomb constant
E = E_a*A/(A-M_a);    // Disintegration energy, mega electron volts
B_H = 2*Z*e^2*K/(R_0*A^(1/3)*1.6*10^-13);    // Barrier height for an alpha particle within the nucleus, MeV
printf("\nDisintegration energy : %5.3f MeV \nBarrier height for alpha-particle: %5.2f MeV", E,B_H);

// Result
// Disintegration energy : 8.935 MeV 
// Barrier height for alpha-particle: 28.26 MeV 