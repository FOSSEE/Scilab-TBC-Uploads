// Scilab Code Ex3.2 Packing efficiency in diamond structure: Page-92 (2010)
// For simplicity we may take radius of the atom, R = 1 unit
R = 1;    // Radius of the atom in bcc lattice, unit
nc = 8;    // Number of corner atoms in diamond structure
nfcc = 6;  // Number of face centred atoms in diamond structure
na = 4;    // Number of atoms completely within the unit cell
n = 1/8*nc+1/2*nfcc+1*na; // Effective number of atoms in the diamond structure
V_atom = 8*4/3*%pi*R^3;  // Volume of atoms within the unit cell, unit cube 
// Since for a diamond cubic crystal, the space lattice is fcc, with two atos per lattice point, such that 8*R = sqrt(3)*a, solving for a
a = 8*R/sqrt(3); // lattice parameter of diamond structure, unit
V_cell = a^3;    // Volume of the unit cell, unit cube
eta = V_atom/V_cell*100; // Packing efficiency in diamond structure
printf("\nThe packing efficiency in diamond structure is : %2.0f percent", eta);
//Result 
// The packing efficiency in diamond structure is : 34 percent