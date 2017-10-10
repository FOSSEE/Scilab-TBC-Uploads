// Ex21_2 Page:399 (2014)
clc;clear;
m_pi_minus = 139.6;    // Mass of a pion, MeV
m_p = 938.3;    // Mass of a proton, MeV
m_n = 939.6;    // Mass of a neutron, MeV
K_n = 0.6;    // The kinetic energy of the neutron, MeV
E_pi0 = m_p + m_pi_minus - m_n - K_n;    // Mass of neutral pion, MeV
E_pi0_r = sqrt(E_pi0^2 - (m_n + K_n)^2 + m_n^2);    // Relativistic mass of neutral pion, MeV
printf("\nThe relativistic mass of neutral pion = %5.1f MeV", E_pi0_r);

// Result
// The relativistic mass of neutral pion = 133.5 MeV 
