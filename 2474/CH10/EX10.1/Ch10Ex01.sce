// Scilab code Ex10.1: Pg.417 (2008)
clc; clear;
N_A = 6.02e+23;    // Avogadro's number
rho = 2.16;    // Density of NaCl, g/cm^3
m = 58.4;    // Mass of 1 mol of NaCl, g
// Since rho = m/V = m/(2*N_A*r_o^3), solving for r_o, we get
r_o = (m/(2*N_A*rho))^(1/3);    // Equilibrium spacing in NaCl crystal, cm
printf("\nThe equilibrium spacing in NaCl crystal = %4.2e cm or %5.3f nm", r_o, r_o*1e+07);

// Result
// The equilibrium spacing in NaCl crystal = 2.82e-008 cm or 0.282 nm 