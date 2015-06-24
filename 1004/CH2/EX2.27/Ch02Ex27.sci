// Scilab Code Ex2.27 Ionization energy of hydrogen atom with orbiting muon: Pg:63 (2008)
m = 9.1e-031;    // Mass of the electron, kg
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.624e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
m1 = 200*m;    // Mass of muon, kg
phi1 = m1*e^4/(8*epsilon_0^2*h^2);    // Ionization energy of H-atom with muon, J
printf("\nThe ionization energy of hydrogen atom with orbiting muon = %4.2e eV", phi1/1.6e-019);
// Result 
// The ionization energy of hydrogen atom with orbiting muon = 2.71e+003 eV 