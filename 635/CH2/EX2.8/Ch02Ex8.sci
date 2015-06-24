// Scilab Code Ex2.8  Energy liberated during electron transfer between ions of a molecule:  Page-71 (2010)
eps_0 = 8.854D-12; // Absolute electrical permittivity of free space, coulomb sqaure per newton per metre square
e = 1.6D-19; // Electronic charge, C
R = 5D-10;    // Separation between the ions M and X, m
IP_M = 5;    // Ionization potential of M, eV
EA_X = 4;    // Electron affinity of X, eV
U = -e/(4*%pi*eps_0*R); // The potential energy of MX molecule, eV
delta_E = IP_M - EA_X; // The net energy required to produce the ion pair, eV
Er = delta_E + U; // Energy required to transfer an electron from M to X atom, eV
printf("\nThe energy required to transfer an electron from M to X atom = %4.2f eV", Er);

//Result 
// The energy required to transfer an electron from M to X atom = -1.88 eV