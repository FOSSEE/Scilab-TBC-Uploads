// Scilab Code Ex2.18: Page-72 (2013)
clc; clear
c = 1;    // For simplicity assume speed of light in vacuum to be unity, m/s
E0_n = 940;    // Rest energy of a neutron, MeV
E0_pi = 140;    // Rest energy of a pion, MeV
p_n = 4702;    // Momentum of the neutron, MeV/c
p_pi = 169;    // Momentum of the pion, MeV/c
E_n = sqrt((p_n*c)^2+E0_n^2);    // Total energy of the neutron, MeV
E_pi = sqrt((p_pi*c)^2+E0_pi^2);    // Total energy of the pion, MeV
E = E_n + E_pi;    // Total energy of the reaction, MeV
p_sigma = p_n + p_pi;    // Momentum of the sigma particle, MeV/c
E0_sigma = sqrt(E^2 - (p_sigma*c)^2);    // Rest mass energy of the sigma particle, MeV
m_sigma = E0_sigma/c^2;    // Rest mass of sigma particle, MeV/c^2;
K = E - E0_sigma;    // Kinetic energy of sigma particle, MeV
printf("\nThe rest mass of sigma particle = %4d MeV/c^2", ceil(m_sigma));
printf("\nThe kinetic energy of sigma particle = %4d MeV", ceil(K));

// Result 
// The rest mass of sigma particle = 1192 MeV/c^2
// The kinetic energy of sigma particle = 3824 MeV  
// The answers are given wrongly in the textbook