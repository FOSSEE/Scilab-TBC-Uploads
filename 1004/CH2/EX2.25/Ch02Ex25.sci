// Scilab Code Ex2.25 Radius and velocity of electron for H and He: Pg:61 (2008)s
m = 9.1e-031;    // Mass of the electron, kg
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.624e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
c = 3e+08;    // Speed of light, m/s
Z = 1, n = 1;    // Atomic number and principal quantum number of H-atom
r_H = epsilon_0*n^2*h^2/(%pi*m*Z*e^2);    // Radius of first Bohr orbit for H-atom, m
v_H = Z*e^2/(2*epsilon_0*n*h);    // Velocity of the electron in the first Bohr orbit of H-atom, m/s
printf("\nThe radius of first Bohr orbit = %4.2e m", r_H);
printf("\nThe velocity of the electron in the first Bohr orbit = %3.1e m/s", v_H);
printf("\nThe velocity of the electron in H-atom compared to the velocity of light = %4.2e", v_H/c);
Z = 2;    // Atomic number of He-atom
r_He = r_H/Z;    // Radius of first Bohr orbit for He-atom, m
v_He = 2*v_H;    // Velocity of the electron in the first Bohr orbit of He-atom, m/s
printf("\nThe radius of first Bohr orbit = %4.2e m", r_He);
printf("\nThe velocity of the electron in the first Bohr orbit = %3.1e m/s", v_He);
printf("\nThe velocity of the electron in He-atom compared to the velocity of light = %5.3e", v_He/c);
// Result 
// The radius of first Bohr orbit = 5.31e-011 m
// The velocity of the electron in the first Bohr orbit = 2.2e+006 m/s
// The velocity of the electron in H-atom compared to the velocity of light = 7.28e-003
// The radius of first Bohr orbit = 2.65e-011 m
// The velocity of the electron in the first Bohr orbit = 4.4e+006 m/s
// The velocity of the electron in He-atom compared to the velocity of light = 1.456e-002 