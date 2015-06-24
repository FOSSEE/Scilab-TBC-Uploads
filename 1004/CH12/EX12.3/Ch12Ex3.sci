// Scilab Code Ex12.3 Binding energy of helium nucleus: Pg: 247 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
amu = 931;    // Energy equivalent of 1 amu, MeV
m = 2*1.007825+2*1.008665-4.002603;    // Mass difference in formation of He, amu
E = m*amu;    // Energy equivalent of mass difference for He nucleus, MeV
printf("\nThe minimum energy required to break He nucleus = %5.2f MeV", E);
// Result 
// The minimum energy required to break He nucleus = 28.28 MeV 