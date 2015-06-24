// Scilab Code Ex2.20 Minimum energy of the electrons in Balmer series: Pg:59 (2008)
n1 = 2;    // Ground level of Balmer line in H-atom
n2 = 3;    // Second level of Balmer line in H-atom
m = 9.1e-031;    // Mass of the electron, C
e = 1.6e-019;    // Charge on an electron, coulomb
h = 6.624e-034;    // Planck's Constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
E = m*e^4/(8*epsilon_0^2*h^2)*(1/n1^2 - 1/n2^2);    // Minimum energy required by an electron to correspond to first wavenumber of Balmer series, J
printf("\nMinimum energy required by an electron to correspond to first wavenumber of Balmer series = %4.2f", E/e);
// Result 
// Minimum energy required by an electron to correspond to first wavenumber of Balmer series = 1.88 