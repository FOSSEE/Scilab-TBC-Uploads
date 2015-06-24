// Scilab code Ex2.9: Pg.53 (2005)
clc; clear;
K_mu = 4.6;    // Kinetic energy of muon, MeV
// For convinience let m_mew*(c^2) = E_mew
E_mu = 106;      // Energy of muon, MeV
E_pion = sqrt((E_mu^2) + (K_mu^2) + (2*K_mu*E_mu)) + sqrt((K_mu^2) + (2*K_mu*E_mu));
m_pion = E_pion;   // Mass of pion, MeV/(c^2)
printf("\nMass of Pion = %3.0f MeV/(c^2)", m_pion);

// Result
// Mass of Pion = 142 MeV/(c^2)
