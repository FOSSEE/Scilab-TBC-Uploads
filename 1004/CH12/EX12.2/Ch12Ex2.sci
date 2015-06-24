// Scilab Code Ex12.2 Rate of fission of U-235: Pg:246 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
E1 = 32e+06;    // Energy released per second, J
E2 = 200e+06;    // Energy released per fission, J
N = E1/E2;    // Number of atoms undergoing fission per second
printf("\nThe number of atoms undergoing fission per second = %1.0e", N/e);
// Result 
// The number of atoms undergoing fission per second = 1e+018 