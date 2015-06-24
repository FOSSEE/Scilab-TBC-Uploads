// Scilab code Ex11.16: Pg.520-521 (2008)
clc; clear;
m_p = 1.007825;    // Mass of proton, u
m_L = 7.016003;    // Mass of Lithium, u
m_i = m_p + m_L;    // Total mass of initial particles, u
m_He = 4.002602;    // Mass of Helium, u
m_f = 2*m_He;    // Total mass of final particles, u
delta_m = m_i - m_f;    // Mass difference, u
Q = delta_m*931.5;    // Amount of energy released, MeV
printf("\nThe amount of energy released in the exothermic reaction = %5.2f MeV", Q);

// Result
// The amount of energy released in the exothermic reaction = 17.35 MeV 