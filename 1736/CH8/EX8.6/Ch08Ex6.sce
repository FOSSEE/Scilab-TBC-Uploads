// Scilab code Ex8.6 Page:242 (2006)
clc; clear;
N = 6.039e+022;    // Atomic density of Neon gas, per cubic cm 
// As r_classic = e^2/(m*c^2), Classical radius of an electron
r_classic = 2.8e-013;   // Classical radius of the electron, cm
Z = 10;    // Atomic number of helium atom
a0 = 0.53e-08;      // Bohr's radius, cm
n1 = 2, n2 = 2, n3 = 6;     // Occupation numbers for 1s, 2s and 2p states of Ne
r_sq_1s = 0.031;    // Expectation value for 1s state
r_sq_2s = 0.905;    // Expectation value for 2s state
r_sq_2p = 1.126;    // Expectation value for 2p state 
mean_r_sq = n1*r_sq_1s + n2*r_sq_2s + n3*r_sq_2p;   // Mean square radius, cm-square
Chi_A = -1/6*N*Z*r_classic*mean_r_sq*a0^2;    // Magnetic susceptibility of helium atom, cgs units
printf("\nAtomic susceptibility of Ne atom = %6.4e emu/mole", Chi_A);

// Result 
// Atomic susceptibility of Ne atom = -6.8302e-006 emu/mole 
