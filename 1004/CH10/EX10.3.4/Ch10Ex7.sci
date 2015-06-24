// Scilab Code Ex10.3.4 Binding energy per nucleon of Ni-64: Pg: 220 (2008)
amu = 931;    // Mass of a nucleon, MeV
MH = 1.007825;    // Mass of hydrogen, amu
Me = 0.000550;    // Mass of electron, amu
Mp = MH-Me;    // Mass of proton, amu
Mn = 1.008665;    // Mass of neutron, amu
m_Ni = 63.9280;    // Mass of Ni-64 atom, amu
MNi = m_Ni-28*Me;    // Mass of ni-64 nucleus, amu
m = (28*Mp+36*Mn)-MNi;    // Mass difference, amu
BE = m*amu;    // Binding energy of Ni-64, MeV
BE_bar = BE/64;    // Binding energy per nucleon of Ni-64, MeV
printf("\nThe binding energy per nucleon of Ni-64 = %4.2f MeV", BE_bar);
// Result 
// The binding energy per nucleon of Ni-64 = 8.77 MeV 