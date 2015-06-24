// Scilab Code Ex3.15: Lowest energy of three electrons in box: Pg:85 (2008)
n1 = 1, l = 0, ml = 0, ms = 1/2;    // Quantum numbers of first electron
n2 = 1, l = 0, ml = 0, ms = -1/2;    // Quantum numbers of second electron
n3 = 2, l = 0, ml = 0, ms = +1/2;    // Quantum numbers of third electron
// The lowest energy corresponds to the ground state of electrons
m = 9.1e-031;    // Mass of electron, kg
h = 6.626e-034;    // Planck's constant, Js
a = 1;    // For convenience, length of the box is assumed to be unity
E = (n1^2*h^2/(8*m*a^2)+n2^2*h^2/(8*m*a^2))+n3^2*h^2/(8*m*a^2);    // Lowest energy of electron, joule
printf("\nThe lowest energy of electron = %6.4e/a^2", E);
// Result 
// The lowest energy of electron = 3.6185e-037/a^2 