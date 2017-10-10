// Ex7_1 Page:113 (2014)
clc;clear;
e = 1.6e-019;    // Energy conversion factor, J/eV
mu_B = 9.27e-024;    // Bohr magneton, J/T
B = 3;     // Magnetic field, T
m_l = [-1, 1];    // Orbital magnetic quantum number
dE = mu_B*B*(m_l(2)-m_l(1))/e;    // Energy difference between m_l = -1 and m_l = +1, eV
printf("\nThe energy difference between m_l = -1 and m_l = +1 components in 2p state = %4.2e eV", dE);

// Result 
// The energy difference between m_l = -1 and m_l = +1 components in 2p state = 3.48e-004 eV