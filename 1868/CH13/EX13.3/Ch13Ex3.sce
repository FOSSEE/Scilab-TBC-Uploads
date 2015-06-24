// Scilab code Ex13.3: Pg 473 (2005)
clc; clear;
M2 = 2.014102;  // Atomic mass of deuteron, u
M_H = 1.007825; // Atomic mass of hydrogen, u
m_n = 1.008665; // Mass of a neutron, u
E_b = (M_H + m_n - M2)*931.494;     // Binding energy of the deuteron, MeV/u
printf("\nThe binding energy of the Deuteron = %5.3f MeV", E_b);

// Result
// The binding energy of the Deuteron = 2.224 MeV
