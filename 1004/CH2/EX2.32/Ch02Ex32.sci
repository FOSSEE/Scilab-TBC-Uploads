// Scilab Code Ex2.32 Mu-mesonic atom subjected to Bohr orbit: Pg:65 (2008)
Z = 3;    // Atomic number of Mu-mesonic atom
m_e = 9.1e-031;    // Mass of the electron, kg
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.624e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
m = 200*m_e;    // Mass of a muon, kg
// As r_H = epsilon_0*^h^2/(%pi*m*(e^2) and r = epsilon_0*n^2*h^2/(%pi*m*Z*(e^2)
// r = r_H gives
n = sqrt(m/m_e*Z);    // Value of n for which r = r_H
n1 = 1, n2 = 2;    // Principal quantum numbers corresponding to first excitation
U = m*e^4*Z^2/(8*epsilon_0^2*h^2*1.6e-019)*(1/n1^2-1/n2^2);    // First excitation potential of the atom, eV
printf("\nThe value of n for which radius of orbit is equal to Bohr radius = %2d", round(n));
printf("\nThe first excitation potential of the atom = %4.2e eV", U);
// Result 
// The value of n for which radius of orbit is equal to Bohr radius = 24
// The first excitation potential of the atom = 1.83e+004 eV 