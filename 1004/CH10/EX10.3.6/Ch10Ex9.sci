// Scilab Code Ex10.6 Binding energy and packing fraction of helium: Pg: 221 (2008)
amu = 931;    // Energy equivalent of amu, MeV
mp = 1.00814;    // Mass of proton, amu
mn = 1.00898;    // Mass of neutron, amu
m_He = 4.00387;    // Mass of helium, amu
A = 4;    // Mass number of helium
m = 2*(mp+mn)-m_He;    // Mass difference, amu
dm = m_He - A;    // Mass defect of He
BE = dm*amu;    // Binding energy of He, MeV
p = dm/A;    // Packing fraction of He
printf("\nThe binding energy of helium = %6.3f MeV", BE);
printf("\nThe packing fraction of helium = %5.3e", p);
// Result 
// The binding energy of helium = 28.414 MeV
// The packing fraction of helium = 9.675e-004 