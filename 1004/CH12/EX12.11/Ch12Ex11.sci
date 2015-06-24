// Scilab Code Ex12.11 Energy released during fission of U-235: Pg: 250 (2008)
N = 6.023e+023;    // Avogadro's number
A = 235;    // Mass number of U-235
n = N/235;    // Number of atoms in 1g of U-235
E = 200;    // Energy produced by fission of 1 U-235 atom, MeV
U = n*E;    // Energy produced by fission of 1g of U-235 atoms, MeV
printf("\nThe energy produced by fission of 1g of U-235 atoms = %5.3e MeV", U);
// Result
// The energy produced by fission of 1g of U-235 atoms = 5.126e+023 MeV