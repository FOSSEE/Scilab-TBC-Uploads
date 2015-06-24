// Scilab Code Ex4.1 Bohr's orbit for the hydrogen atom: Page-126 (2010)
n = 1;    // The ground state orbit of hydrogen atom
Z = 1;    // The atomic number of hydrogen
h = 6.626D-34; // Plank's constant, Js
eps_0 = 8.85D-12;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
e = 1.602D-19;    // Electronic charge, C
m = 9.1D-31;    // Electronic mass, kg
r_B = (n^2*h^2*eps_0)/(%pi*m*Z*e^2);  // Radius of first Bohr's orbit (Bohr radius), m
disp(r_B/1D-10, "The radius of first Bohr orbit, in angstrom, is : ");
// Result 
// The radius of first Bohr orbit, in angstrom, is :    
// 0.5295779