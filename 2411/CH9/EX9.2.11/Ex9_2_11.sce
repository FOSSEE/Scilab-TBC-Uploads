// Scilab Code Ex9.2.11: Page-418(2008)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
m_x = 4.002603;    // Mass of projectile (alpha-particle), u
m_y = 1.007825;    // Mass of emitted particle (proton), u
M_X = 14.0031;     // Mass of target nucleus (N-14), u
M_Y = 16.9994;    // Mass of daughter nucleus (O-16), u
Q = ((m_x + M_X) - (m_y + M_Y))*u;    // Q-value of the reaction, MeV
printf("\nThe Q-value of the nuclear reaction = %5.3f MeV", Q);

// Result 
// The Q-value of the nuclear reaction = -1.418 MeV 