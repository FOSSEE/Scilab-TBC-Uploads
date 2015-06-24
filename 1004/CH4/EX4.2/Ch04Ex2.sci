// Scilab code: Ex4.2 : Width of the potential barrier: Pg: 125 (2008)
A = 222;    // Atomic weight of radioactive atom
Z = 86;    // Atomic number of radioactive atom
eV = 1.6e-19;    // Energy required by an electron to move through a potential barrier of one volt, joules
epsilon_0 = 8.854e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
e = 1.6e-19;     // Charge on an electron, coulomb
r0 = 1.5e-015;    // Nuclear radius constant, m
r = r0*A^(1/3);    // Radius of the radioactive atom, m
E = 4*eV*1e+06;    // Kinetic energy of an alpha particle, joule
// At the distance of closest approach, r1, E = 2*(Z-2)*e^2/(4*%pi*epsilon_0*r1)
// Solving for r1, we have
r1 = 2*(Z-2)*e^2/(4*%pi*epsilon_0*E);    // The distance form the centre of the nucleus at which PE = KE
a = r1 - r;    // Width of the potential barrier, m
printf("\nThe width of the potential barrier of the alpha particle = %5.2e m", a);
// Result
// The width of the potential barrier of the alpha particle = 5.13e-014 m