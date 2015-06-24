// Scilab code Ex2.8: Pg.84 (2008)
clc; clear;
B_E = 13.6;    // Binding energy of H-atom, eV
// Since 1 atomic unit, u = 931.5 MeV/c^2, therefore we get
u = 931.5e+06;    // Mass, eV/c^2
m_l = B_E/u;    // Mass lost during formation of Hydrogen atom, u
printf("\nThe mass lost during the formation of hydrogen atom = %4.2e u", m_l);

// Result
// The mass lost during the formation of hydrogen atom = 1.46e-008 u 