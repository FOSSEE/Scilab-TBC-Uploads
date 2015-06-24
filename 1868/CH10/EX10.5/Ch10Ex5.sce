// Scilab code Ex10.5: Pg 360 (2005)
clc; clear;

// Part (a)
h = 6.625e-34;   // Plank's constant, J-s
m_e = 9.11e-31;   // Mass of electron, kg
density = 19.32/(1e-02)^3;   // Density of gold, g/m^3
weight = 197;     // Molar weight, g/mol
N_V = (density/weight)*6.02e+23;   // Number of electrons per mole
E_F = (h^2/(2*m_e*1.6e-19))*((3*(N_V))/(8*%pi))^(2/3);   // Fermi energy of Gold at 0 K
printf("\nFermi energy of Gold at 0 K = %4.2f eV", E_F); 

// Part (b)
v_F = sqrt((2*E_F*1.6e-19)/m_e);   // Fermi speed of Gold at 0 K
printf("\nFermi speed of Gold at 0 K = %4.2fe+06 m/s", v_F*1e-06);

// Part (c)
k_B = 8.62e-05;   // Boltzmann constant, eV/K
T_F = (E_F)/(k_B);    // Fermi temperature for Gold at 0 K, K
printf("\nFermi temperature for Gold at 0 K = %5d K", T_F);

// Result
// Fermi energy of Gold at 0 K = 5.53 eV
// Fermi speed of Gold at 0 K = 1.39fe+06 m/s
// Fermi temperature for Gold at 0 K = 64201 K
