// Scilab Code Ex3.3: Page-88 (2006)
clc; clear;
N = 6.02e+26;  // Avogadro's number, per kmole
C_t = 6.32e+03;     // Velocity of transverse wave, m/s
C_l = 3.1e+03;     // Velocity of longitudinal wave, m/s
rho = 2.7e+03;     // Density of Al, kg per metre cube
M = 26.97;  // Atomic weight of Al, gram per mol
V = M/rho;  // Atomic volume of Al, metre cube
f_c = (9*N/(4*%pi*V*(1/C_t^3+2/C_l^3)))^(1/3);
printf("\nThe Debye cut-off frequency of Al = %4.2e per sec", f_c);

// Result 
// The Debye cut-off frequency of Al = 8.47e+012 per sec 
