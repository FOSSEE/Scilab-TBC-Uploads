// Scilab Code Ex13.3: Page-481(2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
M_He = 4.002603;    // Mass of He-4 nucleus, u
M_N = 14.003074;    // Mass of N-14 nucleus, u
M_H = 1.007825;    // Mass of hydrogen nucleus, u
M_O = 16.999132;    // Mass of O-16 nucleus, u
K_alpha = 7.7;    // The kinetic energy of alpha particle, MeV
Q = (M_He + M_N - M_H - M_O)*u;    // The ground state Q-value of the nuclear reaction, MeV
// As Q = K_p + K_O - K_alpha, solving for K_p + K_O
K = Q + K_alpha;    // The sum of kinetic energy of the products, MeV
printf("\nThe ground state Q-value of the endoergic nuclear reaction = %5.3f MeV", Q);
printf("\nThe sum of kinetic energy of the products = %3.1f MeV", K);

// Result
// The ground state Q-value of the endoergic nuclear reaction = -1.192 MeV
// The sum of kinetic energy of the products = 6.5 MeV 
