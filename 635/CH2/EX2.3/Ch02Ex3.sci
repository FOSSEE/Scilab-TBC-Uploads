// Scilab Code Ex2.3 Potential energy of the system of Na+ and Cl- ions: Page-68 (2010)
e = 1.6D-19; // Electronic charge, C
ep_0 = 8.854D-12; // Absolute electrical permittivity of free space, coulomb square per newton per metre square
Re = 2D-10; // Equilibrium separation between Na+ and Cl- ions, m
U = -e/(4*%pi*ep_0*Re); // Potential energy of NaCl molecule at equilibrium separation, electron-volt
printf("\nThe potential energy of NaCl molecule at equilibrium separation5 is : %3.1f eV", U);

//Result 
// The potential energy of NaCl molecule at equilibrium separation5 is : -7.2 eV