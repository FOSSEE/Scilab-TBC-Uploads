// Scilab code Ex15.5: Pg 570 (2005)
clc; clear;
m_pi = 135;     // Mass of pion, MeV/c^2
m_p = 938.3;     // Mass op proton, MeV/c^2
// For simplification, let velocity of light be unity
c = 1;       // Velocity of light, m/s
// Simplifying  K_th = (m_3 + m_4 + m_5 + ....)^2*c^2 - (m_1 + m_2)^2*c^2, we get
K_th = 2*m_pi*c^(2) + ((m_pi*c)^2/(2*m_p));     // Required kinetic energy of proton, MeV
printf("\nRequired kinetic energy of proton = %3d MeV", ceil(K_th));

// Result
// Required kinetic energy of proton = 280 MeV 
