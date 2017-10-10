// Ex21_1 Page:399 (2014)
clc;clear;
m_pi = 140;    // Mass of a pion, MeV
m_p = 938.3;    // Mass of a proton, MeV
m_K = 498;    // Mass of a kaon, MeV
m_lambda = 1116;    // Mass of lambda hyperon, MeV
Q = m_pi + m_p - m_K - m_lambda;
printf("\nThe Q-value of the reaction = %3d MeV", floor(Q));

// Result
// The Q-value of the reaction = -536 MeV 
