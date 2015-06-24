// Scilab Code Ex3.15: Page-94 (2006)
clc; clear;
T_M = 1356;     // Melting temperature of Cu, K
V = 7.114;      // Atomic volume of Cu, cm cube per g-atom
M = 63.5;       // atomic weight of Cu, g/mole
K = 138.5;      // Lindemann constant
theta_M = K*(T_M/M)^(1/2)*(1/V)^(1/3); // Debye temperature by Lindemann method, K

printf("\nThe Debye temperature by Lindemann method = %3d K", ceil(theta_M));
printf("\nThe values obtained from other methods are:");
printf("\ntheta_s = 342 K;      theta_R = 336 K;        theta_E = 345 K");

// Result 
// The Debye temperature by Lindemann method = 333 K 
// The values obtained from other methods are:
// theta_s = 342 K;      theta_R = 336 K;        theta_E = 345 K 
