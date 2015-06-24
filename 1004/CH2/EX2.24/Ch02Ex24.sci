// Scilab Code Ex2.24 Radius and speed of electron in the first Bohr orbit: Pg:61 (2008)s
m = 9.1e-031;    // Mass of the electron, C
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.626e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
Z = 1, n = 1;
r_H = epsilon_0*n^2*h^2/(%pi*m*Z*e^2);    // Radius of first Bohr orbit, m
v_H = Z*e^2/(2*epsilon_0*n*h);    // Velocity of the electron in the first Bohr orbit, m/s
printf("\nThe radius of first Bohr orbit = %4.2e m", r_H);
printf("\nThe velocity of the electron in the first Bohr orbit = %3.1e m/s", v_H);
// Result 
// The radius of first Bohr orbit = 5.31e-011 m
// The velocity of the electron in the first Bohr orbit = 2.2e+006 m/s