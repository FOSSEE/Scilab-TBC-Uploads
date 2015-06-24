// Scilab Code Ex12.8 Consumption rate of U-235: Pg: 248 (2008)
N = 6.023e+026;    // Avogadro's number, No. of atoms per kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
P = 100e+06;    // Average power generation, J/s
U = P*365*24*60*60;    // Energy required in one year, J
U1 = 180e+06*e;    // Energy produced by one atom fission of U-235
n = U/U1;    // Number of atoms required to produce energy in one year
M = n*235/N;    // Mass of U-235 required per year, kg
printf("\nThe rate of consumption of U-235 per year = %7.4f kg", M);
// Result 
// The rate of consumption of U-235 per year = 42.7237 kg  