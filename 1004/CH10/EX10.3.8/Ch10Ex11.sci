// Scilab Code Ex10.8 Maximum height of the potential barrier for alpha penetration: Pg:222 (2008)
epsilon_0 = 8.854e-12;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
Z = 92;    // Atomic number of U-92 nucleus
z = 2;    // Atomic number of He nucleus
e = 1.6e-019;    // Charge on an electron, coulomb
R = 9.3e-015;    // Radius of residual nucleus, m
U = 1/(4*%pi*epsilon_0)*Z*z*e^2/(R*1.6e-013);    // Maximum height of potential barrier, MeV
printf("\nThe maximum height of the potential barrier for alpha penetration = %2d MeV", U);
// Result 
// The maximum height of the potential barrier for alpha penetration = 28 MeV 