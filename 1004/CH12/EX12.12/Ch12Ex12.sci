// Scilab Code Ex12.12 Minimum energy of gamma photon for pair production: Pg: 250 (2008)
c = 3.0e+08;    // Speed of light, m/s
me = 9.1e-031;    // Mass of electron, kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
mp = me;    // Mass of positron, kg
U = (me+mp)*c^2/(e*1e+06);    // Energy of gamma-ray photon, MeV
printf("\nThe energy of gamma-ray photon = %5.3f MeV", U);
// Result
// The energy of gamma-ray photon = 1.024 MeV 