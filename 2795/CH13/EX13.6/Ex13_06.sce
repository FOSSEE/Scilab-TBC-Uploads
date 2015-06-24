// Scilab Code Ex13.6: Page-488(2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
m_n = 1.0087;    // Mass of a neutron, u
M_U235 = 235.0439;    // Mass of U-235 nucleus, u
M_U236 = 236.0456;    // Mass of U-236 nucleus, u
M_U238 = 238.0508;    // Mass of U-238 nucleus, u
M_U239 = 239.0543;    // Mass of U-239 nucleus, u
E_U236 = (m_n + M_U235 - M_U236)*u;    // Excitation energy of U-236 nucleus, MeV
E_U239 = (m_n + M_U238 - M_U239)*u;    // Excitation energy of U-239 nucleus, MeV
printf("\nThe excitation energy of U-236 nucleus = %3.1f MeV", E_U236);
printf("\nThe excitation energy of U-239 nucleus = %3.1f MeV", E_U239);

// Result
// The excitation energy of U-236 nucleus = 6.5 MeV
// The excitation energy of U-239 nucleus = 4.8 MeV 