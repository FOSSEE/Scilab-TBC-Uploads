// Scilab Code Ex2.21 Ionization potential of hydrogen atom: Pg:59 (2008)
m = 9.1e-031;    // Mass of the electron, C
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.626e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
phi = m*e^4/(8*epsilon_0^2*h^2);    // Work function or ionization energy of hydrogen atom, J
printf("\nThe ionization energy of hydrogen atom = %5.2f eV", phi/e);
// Result 
// The ionization energy of hydrogen atom = 13.55 eV 