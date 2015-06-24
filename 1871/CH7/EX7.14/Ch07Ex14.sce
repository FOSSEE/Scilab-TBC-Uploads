// Scilab code Ex7.14: Pg:309 (2008)
clc;clear;
amu = 931.5;    // Energy equivalent of 1 amu, MeV
M_He = 4.00260;    // Mass of helium, amu
m_e = 0.00055;    // Mass of electron, amu
M_C = 12.000;    // Mass of carbon, amu
m_He = M_He - 2*m_e;    // Mass of helium nucleus, amu
m_C = M_C - 6*m_e;    // Mass of carbon nucleus, amu
d_m = 3*m_He - m_C;    // Mass defect, amu
E = d_m*amu;    // Equivalent energy of mass defect, MeV
printf("\nThe energy invloved in each fusion reaction inside the star = %4.2f MeV", E);

// Result 
// The energy invloved in each fusion reaction inside the star = 7.27 MeV