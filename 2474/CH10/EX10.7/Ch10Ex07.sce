// Scilab code Ex10.7: Pg.431 (2008)
clc; clear;
E_F = 11.7;    // Fermi energy of Al, eV
e = 1.6e-19;    // Electronic charge, C
m_e = 9.11e-31;    // Mass of electrons, kg
u_F = sqrt((2*E_F*e)/m_e);    // Fermi speed of electrons, m/s
printf("\nThe Fermi speed of electrons in Al = %4.2e m/s", u_F);

// Result
// The Fermi speed of electrons in Al = 2.03e+006 m/s 