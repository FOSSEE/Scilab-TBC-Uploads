// Scilab code Ex11.17: Pg.521 (2008)
clc; clear;
m_N = 13.005738;    // Mass of Nitrogen, u
m_n = 1.008665;    // Mass of neutron, u
m_H = 1.007825;    // Mass of Hydrogen, u
m_C = 13.003355;    // Mass of Carbon, u
m_i = m_C + m_H;    // Total mass of initial particles, u
m_f = m_N + m_n;    // Total mass of final particles, u
Q = (m_f - m_i)*931.5;    // Amount of energy released, MeV
E_th = ((m_H + m_C)/m_C)*Q;    // Threshold energy of incident protons, MeV
printf("\nThe threshold energy of incident protons = %4.2f MeV", E_th);

// Result
// The threshold energy of incident protons = 3.23 MeV 