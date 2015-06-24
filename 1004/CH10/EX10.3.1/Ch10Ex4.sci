// Scilab Code Ex10.3.1 Binding energy per nucleon of helium: Pg:219 (2008)
amu = 931;    // Energy equivalent of amu, MeV
mp = 1.007895;    // Mass of proton, amu
mn = 1.008665;    // Mass of neutron, amu
M_He = 4.00260;    // Atomic weight of helium, amu
dm = 2*(mp+mn)-M_He;    // Mass difference, amu
BE = dm*amu;    // Binding energy of helium, MeV
BE_bar = BE/4;    // Binding energy per nucleon, MeV
printf("\nThe binding energy per nucleon of helium = %6.4f MeV", BE_bar);
// Result 
// The binding energy per nucleon of helium = 7.1035 MeV 