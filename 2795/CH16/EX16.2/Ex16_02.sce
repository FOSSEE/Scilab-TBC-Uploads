// Scilab Code Ex16.2: Page-583(2014)
clc; clear;
M = 1;    // Let the current mass of the universe be unity
m_u = 1;    // Mass equivalent of 1 amu, u
N_n = 2;    // Number of neutrons in helium
N_p = 2;    // Number of protons in helium
M_p = 0.75*M*m_u;    // Total mass of protons
M_He = 0.25*M*m_u;    // Total mass of helium
N_fp = M_p/M_He*(N_n + N_p);    // Total number of free protons for every He-4
N_P = N_fp + N_p;    // Total number of protons per He-4
ratio = N_P/N_n;    // Current ratio of protons to the neutrons in the universe
printf("\nThe current ratio of protons to the neutrons in the universe = %d", ratio);
 
// Result
// The current ratio of protons to the neutrons in the universe = 7 