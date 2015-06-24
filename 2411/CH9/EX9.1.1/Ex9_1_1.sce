// Scilab Code Ex9.1.1:Page-411 (2008)
clc; clear;
u = 931.508;    // Energy equivalent of 1 amu, MeV
Z = 28;    // Atomic number of ni-64
A = 64;    // Mass number of Ni-64
m_p = 1.007825;     // Mass of a proton, u
m_n = 1.008665;    // Mass of a neutron, u
M_Ni = 63.9280;    // Atomic mass of Ni-64 nucleus, u
delta_m = Z*m_p + (A-Z)*m_n - M_Ni;    // Mass difference, u
BE = delta_m*u;    // Binding energy of Ni-64 nucleus, MeV
BE_bar = BE/A;    // Binding energy per nucleon of Ni-64 nucleus, MeV
printf("\nThe binding energy per nucleon for Ni-64 nucleus = %4.2f MeV/nucleon", BE_bar);

// Result 
// The binding energy per nucleon for Ni-64 nucleus = 8.78 MeV/nucleon 