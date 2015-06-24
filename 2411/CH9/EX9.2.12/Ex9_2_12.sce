// Scilab Code Ex9.2.12: Page-418(2008)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
// First reaction
m_x = 1.007825;    // Mass of projectile (proton), u
m_y = 2.014102;    // Mass of emitted particle (deutron), u
M_X = 208.980394;     // Mass of target nucleus (Bi-209), u
M_Y = 207.979731;    // Mass of daughter nucleus (Bi-208), u
Q = ((m_x + M_X) - (m_y + M_Y))*u;    // Q-value of the reaction, MeV
Ex_threshold = -Q*(m_x + M_X)/M_X;    // The smallest value of the projectile energy, MeV
printf("\nThe threshhold energy of the reaction Bi(209,83) + p --> Bi(208,83) + d = %4.2f MeV", Ex_threshold);
// Second reaction
m_x = 4.002603;    // Mass of projectile (alpha-particle), u
m_y = 1.007825;    // Mass of emitted particle (proton), u
M_X = 27.98210;     // Mass of target nucleus (Al-27), u
M_Y = 30.973765;    // Mass of daughter nucleus (P-31), u
Q = ((m_x + M_X) - (m_y + M_Y))*u;    // Q-value of the reaction, MeV
Ex_threshold = -Q*(m_x + M_X)/M_X;    // The smallest value of the projectile energy, MeV
printf("\nThe threshhold energy of the reaction Al(27,13) + He --> P(31,15) + p = %4.2f MeV", Ex_threshold);

// Result 
// The threshhold energy of the reaction Bi(209,83) + p --> Bi(208,83) + d = 5.25 MeV
// The threshhold energy of the reaction Al(27,13) + He --> P(31,15) + p = -3.31 MeV 