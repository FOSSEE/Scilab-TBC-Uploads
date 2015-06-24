// Scilab code Ex9.1: Pg 300 (2005)
clc; clear;
// Since mu_B = (e*h_cross)/(2*m_e)
mu_B = 9.27e-24;     // Bohr magneton, J/T
B = 1.00;    // Magnetic flux, T
// Since 1 eV = 1.6e-19 J
eV = 1.6e-19;   // Energy, J
h_cross = 6.58e-16;   // Reduced Plank's constant, eV-s
omega_L = (mu_B*B)/(eV*h_cross);     // Larmor frequency, rad/s
printf("\nLarmour frequency at n = 2 is %4.2fe+10 rad/s", omega_L*1e-10);

// Result
// Larmour frequency at n = 2 is 8.81e+10 rad/s
