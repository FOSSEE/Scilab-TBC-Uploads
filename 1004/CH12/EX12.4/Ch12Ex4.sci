// Scilab Code Ex12.4 Energy released during fusion of deuterium nuclei: PG: 247 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
amu = 931.5;    // Energy equivalent of 1 amu, MeV
M_H = 2.014102;    // Mass of hydrogen nucleus, amu
M_He = 4.002603;    // Mass of helium nucleus, amu
m = 2*M_H-M_He;    // Mass difference, amu
E = m*amu;    // Energy released during fusion of deuterium nuclei, MeV
printf("\nThe energy released during fusion of deuterium nuclei = %6.3f MeV", E);
// Result 
// The energy released during fusion of deuterium nuclei = 23.847 MeV 