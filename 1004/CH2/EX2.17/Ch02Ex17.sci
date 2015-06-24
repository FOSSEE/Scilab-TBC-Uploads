// Scilab Code Ex2.17 First excitation energy of hydrogen atom: Pg: 58 (2008)s
n1 = 1;    // Principle quantum number of first orbit in H-atom
n2 = 2;    // Principle quantum number of second orbit in H-atom
m = 9.1e-031;    // Mass of the electron, C
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.624e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
U = m*e^4/(8*epsilon_0^2*h^2)*(1/n1^2 - 1/n2^2);    // First excitation energy of hydrogen atom, J
printf("\nThe first excitation energy of hydrogen atom = %5.2f eV", U/e);
// Result 
// The first excitation energy of hydrogen atom = 10.17 eV 