// Scilab Code Ex3.14: Energy of electrons in a one dimensional box: Pg: 85 (2008)
n1 = 1, l = 0, ml = 0, ms = 1/2;    // Quantum numbers of first electron
n2 = 1, l = 0, ml = 0, ms = -1/2;    // Quantum numbers of second electron
// The lowest energy corresponds to the ground state of electrons 
n = n1;    // n1 = n2 = n
m = 9.1e-031;    // Mass of electron, kg
h = 6.626e-034;    // Planck's constant, Js
a = 1;    // For convenience, length of the box is assumed to be unity
E = 2*n^2*h^2/(8*m*a^2);    // Lowest energy of electron, joule
printf("\nThe lowest energy of electron = %6.4e/a^2", E);
// Result 
// The lowest energy of electron = 1.2062e-037/a^2  