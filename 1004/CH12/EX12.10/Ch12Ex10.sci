// Scilab Code Ex12.10 Rate of fission of U-235 : Pg: 249 (2008)
N = 6.023e+026;    // Avogadro's number, No. of atoms per kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
P = 1;    // Average power generation, J/s
U = P*365*24*60*60;    // Energy required in one year, J
U1 = 200e+06*e;    // Energy produced by one atom fission of U-235
n = U/U1;    // Number of atoms undergoing fission per year
M = n/N;    // Mass of U-235 required per year, kg
printf("\nThe rate of fission of U-235 per year = %5.3e kg", M);
// Result 
// The rate of fission of U-235 per year = 1.636e-009 kg 