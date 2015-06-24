// Scilab Code Ex9.1.3:Page-411 (2008)
clc; clear;
u = 931.508;    // Energy equivalent of 1 amu, MeV
Z = 8;    // Atomic number of O-16
A = 16;    // Mass number of O-16
m_p = 1.008142;     // Mass of a proton, u
m_n = 1.008982;    // Mass of a neutron, u
M_O = 15.994915;    // Atomic mass of O-16 nucleus, u
delta_m = Z*m_p + (A-Z)*m_n - M_O;    // Mass difference, u
BE = delta_m*u;    // Binding energy of O-16 nucleus, MeV
BE_bar = BE/A;    // Binding energy per nucleon of O-16 nucleus, MeV
delta_m = abs(M_O - A);    // Mass difference, u
PF = delta_m/A;    // Packing fraction for O-16 nucleus, u
printf("\nThe binding energy per nucleon for O-16 nucleus = %4.2f MeV/nucleon", BE_bar);
printf("\nThe packing fraction for O-16 nucleus = %5.3e u", PF);

// Result 
// The binding energy per nucleon for O-16 nucleus = 8.27 MeV/nucleon
// The packing fraction for O-16 nucleus = 3.178e-004 u 