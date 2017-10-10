// Ex18_7 Page:359 (2014)
clc;clear;
m_AX = 11.011433;    // Mass of parent nucleus, MeV
m_AX_prime = 11.009305;    // Mass of daughter nucleus, MeV
m_e = 0.511;    // Mass of an electron, MeV
Q_min = 0;
Q = (m_AX - m_AX_prime)*931.5 - 2*m_e;     // Q value for the decay, MeV
printf("\nThe maximum energy of the neutrino = %4.2f MeV", Q);
printf("\nThe minimum energy of the neutrino = %d MeV", Q_min);

// Result
// The maximum energy of the neutrino = 0.96 MeV
// The minimum energy of the neutrino = 0 MeV 