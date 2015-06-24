// Scilab Code Ex9.1.4: Page-411 (2008)
clc; clear;
u = 931.508;    // Energy equivalent of 1 amu, MeV
Z = 10;    // Atomic number of Ne-20
A = 20;    // Mass number of Ne-0
m_p = 1.007825;     // Mass of a proton, u
m_n = 1.008665;    // Mass of a neutron, u
BE = 160.64;    // Binding energy of Ne-20 nucleus, MeV
M = Z*m_p + (A-Z)*m_n + Z*0.51/u - BE/u;    // Atomic mass of Ne-20 nucleus, u
printf("\nThe atomic mass of Ne = %7.4f a.m.u", M);

// Result 
// The atomic mass of Ne = 19.9979 a.m.u 