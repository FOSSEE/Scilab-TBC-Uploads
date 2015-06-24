// Scilab Code Ex2.15 First Bohr Orbit in hydrogen atom: Pg:56 (2008)s
n = 1;    // Principle quantum number of first orbit in H-atom
h = 6.624e-034;    // Planck's Constant, Js
c = 3e+08;    // Speed of light, m/s
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
Z = 1;    // Atomic number of hydrogen
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Charge on an electron, coulomb
r = epsilon_0*n^2*h^2/(%pi*m*Z*e^2);    // Radius of first Bohr's orbit, m
v = Z*e^2/(2*8.85e-012*h*n);    // Velocity of electron in the first Bohr orbit, m/s
printf("\nThe radius of first Bohr orbit = %5.3f angstrom", r/1e-010);
printf("\nThe velocity of electron in first Bohr orbit = (1/%3d)c", 1/v*c);
// Result 
// The radius of first Bohr orbit = 0.531 angstrom
// The velocity of electron in first Bohr orbit = (1/137)c