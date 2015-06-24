// Scilab Code Ex12.5 Energy required to break one gram mole of helium: Pg: 247 (2008)
amu = 931.5;    // Energy equivalent of 1 amu, MeV
mp = 1.007825;    // Mass of proton, amu
mn = 1.008665;    // Mass of neutron, amu
M_He = 4.002603;    // Mass of helium nucleus, amu
N = 6.023e+023;    // Avogadro's number, g/mol
m = 2*mp+2*mn-M_He;    // Mass difference, amu
E1 = m*amu;    // Energy required to break one atom of He, MeV
E = N*E1;    // Energy required to break one gram mole of He, MeV
printf("\nThe energy required to break one gram mole of He = %5.3e MeV", E);
// Result 
// The energy required to break one gram mole of He = 1.704e+025 MeV 