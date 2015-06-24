// Scilab Code Ex10.3.2 Energy released in the fusion of deuterium: Pg:220 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
Q = 43;    // Energy released in fusion of six deuterium atoms, MeV
N = 6.023e+026;    // Avogadro's number, No. of atoms per kg
n = N/2;    // Number of atoms contained in 1 kg of deuterium
U = Q/6*n*e*1e+06;    // Energy released due to fusion of 1 kg of deuterium, J
printf("\nThe energy released due to fusion of 1 kg of deuterium = %5.3e J", U);
// Result 
// The energy released due to fusion of 1 kg of deuterium = 3.453e+014 J 