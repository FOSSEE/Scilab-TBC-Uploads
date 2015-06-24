// Scilab code Ex9.4: Pg.381 (2008)
clc; clear;
m_1 = 1.01;    // Mass of hydrogen atom, u
m_2 = 35.5;    // Mass of Chlorine atom, u
mu = m_1*m_2/(m_1 + m_2);    // Reduced mass of HCl molecule, u
printf("\nThe reduced mass of HCl molecule = %4.2f u", mu);

// Result
// The reduced mass of HCl molecule = 0.98 u 