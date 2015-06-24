// Scilab Code Ex12.8: Page-447 (2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
m_p = 1.007825;    // Mass of proton, amu
m_n = 1.008665;     // Mass of neutron, amu
M_Ne = 19.992440; // Mass of Ne-20 nucleus, amu
M_Fe = 55.934942;    // Mass of Fe-56 nucleus, amu
M_U = 238.050783;    // Mass of U-238 nucleus, amu
A_Ne = 20;    // Mass number of Ne-20 nucleus
A_Fe = 56;    // Mass number of Fe-56 nucleus
A_U = 238;    // Mass number of U-238 nucleus
BE_Ne = [10*m_p+10*m_n-M_Ne]*u;    // Binding energy of Ne-20 nucleus, MeV
BE_Fe = [26*m_p+30*m_n-M_Fe]*u;    // Binding energy of Fe-56 nucleus, MeV
BE_U = [92*m_p+146*m_n-M_U]*u;    // Binding energy of U-238 nucleus, MeV
printf("\nThe binding energy per nucleon for Ne-20 : %4.2f MeV/nucleon", BE_Ne/A_Ne);
printf("\nThe binding energy per nucleon for Fe-56 : %4.2f MeV/nucleon", BE_Fe/A_Fe);
printf("\nThe binding energy per nucleon for U-238 : %4.2f MeV/nucleon", BE_U/A_U);

// Result
// The binding energy per nucleon for Ne-20 : 8.03 MeV/nucleon
// The binding energy per nucleon for Fe-56 : 8.79 MeV/nucleon
// The binding energy per nucleon for U-238 : 7.57 MeV/nucleon 