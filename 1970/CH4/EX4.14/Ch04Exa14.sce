// Scilab code Exa4.14 : : Page 181 (2011)
clc; clear;
m_p = 0.938;    // Mass of the proton, GeV
E = 1.4;        // Total energy of proton, GeV
gama = E/m_p;     // Boost parameter
bta = sqrt(1-1/gama^2);    // Relativistic factor
d = 10;        // Distance between two counters,m
C = 3e+08;     // Velocity of light ,m/s
t_p = d/(bta*C);    // Time of flight of proton ,sec
T_e = d/C;        // Time of flight of electron, sec
printf("\nTime of flight of proton: %4.2f ns \nTime of flight of electron : %4.2f ns ", t_p/1e-009, T_e/1e-009);

// Result
// Time of flight of proton: 44.90 ns 
// Time of flight of electron : 33.33 ns  