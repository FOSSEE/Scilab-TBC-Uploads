// Scilab code Ex8.4 Page:241 (2006)
clc; clear;
a_B = 0.53e-08;    // Bohr radius, cm
N = 27e+023;    // Atomic density of He gas, per cubic cm
c = 3e+010;    // Speed of light, cm/sec
e = 1.6e-019;    // Charge of an electron, Coulomb
m = 9.1e-028;    // Mass of an electron, g
// As r_classic = e^2/(m*c^2), Classical radius of an electron
r_classic = 2.8e-013;   // Classical radius of the electron, cm 
chi = -2*N*r_classic/6*a_B^2;    // Magnetic susceptibility of Helium, cgs units

printf("\nDiamagnetic susceptibility of helium atom in ground state = %3.1e emu", chi);

// Result 
// Diamagnetic susceptibility of helium atom in ground state = -7.1e-006 emu 
