// Ex18_6 Page:356 (2014)
clc;clear;
m_U232 = 232.037131;    // Atomic mass of U-232, u
m_He4 = 4.002603;    // Atomic mass of He-4, u
KE_alpha = 5.32;    // Kinetic energy of alpha-particle, MeV
m_Th228 = m_U232 - m_He4 - KE_alpha/931.5;    // Atomic mass of Th-228, u
printf("\nThe atomic mass of Th-228 = %10.6f u", m_Th228);

// Result
// The atomic mass of Th-228 = 228.028817 u 
// The answers vary due to round off error