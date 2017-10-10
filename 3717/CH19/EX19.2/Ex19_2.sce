// Ex19_2 Page:368 (2014)
clc;clear;
m_x = 1.008665;    // Mass of a proton, u
m_y = 1.007825;    // Mass of a neutron, u
M_X = 18.998404;    // Atomic mass of F-19, u
M_Y = 19.003577;    // Atomic mass of O-19, u
Q = (M_X + m_x - m_y - M_Y)*931.5;    // Q-value of the reaction, MeV
K_x_min = (1 + m_x/M_X)*abs(Q);    // The threshold energy for the reaction, MeV
printf("\nThe Q-value of the reaction = %6.4f MeV", Q);
printf("\nThe threshold energy for the reaction = %4.2f MeV", K_x_min);

// Result
// The Q-value of the reaction = -4.0362 MeV
// The threshold energy for the reaction = 4.25 MeV 