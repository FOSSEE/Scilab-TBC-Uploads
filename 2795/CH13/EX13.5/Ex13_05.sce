
// Scilab Code Ex13.5: Page-487(2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
M_U235 = 235.0439;    // Mass of U-235 nucleus, u
m_n = 1.0087;    // Mass of a neutron, u
M_Zr99 = 98.9165;    // Mass of Zr-99 nucleus, u
M_Te134 = 133.9115;    // Mass of Te-134 nucleus, u
Q = (M_U235 + m_n - M_Zr99 - M_Te134 - 3*m_n)*u;    // Q-value of the reaction, MeV
printf("\nThe ground state Q-value of the induced fission reaction = %3d MeV", ceil(Q));

// Result
// The ground state Q-value of the induced fission reaction = 185 MeV 