// Scilab Code Ex7.7: Page-255 (2014)
clc; clear;
e = 1.602e-019;    // Charge on an electron, C
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
m = 9.11e-031;    // Electron mass, kg
B = 2.00;    // External magnetic field, T
m_l1 = 0;    // Lower orbial magnetic quantum number
m_l2 = 1;    // Upper orbial magnetic quantum number
delta_m_l = m_l2 - m_l1;    // Change in m_l
mu_B = e*h_bar/(2*m);    // Bohr's magneton, J/T
delta_E = mu_B*B*delta_m_l/e;    // Energy difference between components of p states of atomic hydrogen placed in the external field, eV
printf("\nThe value of Bohr magneton = %4.2e J/T", mu_B);
printf("\nThe energy difference between components of p states of atomic hydrogen placed in the external field = %4.2e eV", delta_E);

// Result
// The value of Bohr magneton = 9.26e-024 J/T
// The energy difference between components of p states of atomic hydrogen placed in the external field = 1.16e-004 eV 