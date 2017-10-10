// Ex19_1 Page:368 (2014)
clc;clear;
K_x = 10;    // Energy of incident deutrons, MeV
K_y = 15;    // Energy of emitted neutrons. MeV
m_H2 = 2.014102;    // Atomic mass of deutrium, u
m_n = 1.008665;    // Mass of a neutron, u
m_Cu63 = 62.929599;    // Atomic mass of Cu-63, u
m_Zn64 = 63.929144;    // Atomic mass of Zn-64, u
Q = (m_H2 + m_Cu63 - m_n - m_Zn64)*931.5;    // Q-value of the reaction, MeV
K_Y = Q + K_x - K_y;    // The KE of the residual nucleus, MeV
printf("\nThe Q-value of the reaction = %5.3f MeV", Q);
printf("\nThe KE of the residual nucleus = %5.3f MeV", K_Y);

// Result
// The Q-value of the reaction = 5.488 MeV
// The KE of the residual nucleus = 0.488 MeV 
