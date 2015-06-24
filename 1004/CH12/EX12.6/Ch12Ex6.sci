// Scilab Code Ex12.6 Energy liberated during production of alpha particles: Pg: 248 (2008)
amu = 931;    // Energy equivalent of 1 amu, MeV
mp = 1.007825;    // Mass of proton, amu
M_Li = 7.016005;    // Mass of lithium nucleus, amu
M_He = 4.002604;    // Mass of helium nucleus, amu
dm = M_Li+mp-2*M_He;    // Mass difference, amu
disp(dm)
U = dm*amu;    // Energy liberated during production of two alpha particles, MeV
printf("\nThe energy liberated during production of two alpha particles = %5.2f MeV", U);
// Result 
// The energy liberated during production of two alpha particles = 17.34 MeV  