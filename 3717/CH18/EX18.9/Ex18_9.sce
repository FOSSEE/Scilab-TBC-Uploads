// Ex18_9 Page:360 (2014)
clc;clear;
m_N12 = 12.018613;    // Mass N-12 nucleus, MeV
m_C12 = 12;    // Mass C-12 nucleus, MeV
m_e = 0.000549;    // Mass of the electron, MeV
E_gamma = 4.43;    // Energy of the emitted gamma ray. MeV
Q = (m_N12 - m_C12 - 2*m_e)*931.5;     // Q value for the reaction, MeV
E_max = Q - E_gamma;    // The maximum kinetic energy of the beta particle, MeV
printf("\nThe maximum kinetic energy of the beta particle = %5.2f MeV", E_max);

// Result
// The maximum kinetic energy of the beta particle = 11.89 MeV 