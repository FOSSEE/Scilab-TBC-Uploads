// Scilab Code Ex5.9 :: Page-5.39 (2009)
clc;clear;
m_Ca_41 = 40.962278;   // Mass of one Ca-41 nuclei, amu
m_Ca_42 = 41.958618;   // Mass of one Ca-41 nuclei, amu
m_n = 1.008665;     // Mass of a neutron, amu
delta_m = m_Ca_42 - (m_Ca_41 + m_n);    // Difference in the mass of Ca-42 and Ca_41 nuclei, amu
E = delta_m*(931.49);   // Binding energy of the missing neutron, MeV
printf("\nThe energy needed to remove a neutron from Ca-42 nucleus = %5.2f MeV", abs(E));

// Result
// The energy needed to remove a neutron from Ca-42 nucleus = 11.48 MeV 
