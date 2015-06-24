// Scilab Code Ex10.4 : Page-358 (2014)
clc; clear;
e = 1.602e-019;    // Charge on an electron, C
N_A = 6.023e+023;    // Avogadro's number
alpha = 1.7476;    // Madelung constant
E = -764.4e+003;    // Dissociation energy of NaCl molecule, J/mol
V = E/N_A;    // Repulsive potential energy, J
k = 8.988e+009;    // Coulomb's constant, N-Sq.m/C^2
r0 = 0.282e-009;    // Equilibrium separation for nearest neighbour in NaCl, m
rho = r0*(1+r0*V/(k*alpha*e^2));    // Range parameter for NaCl, nm
printf("\nThe range parameter for NaCl = %6.4f nm", rho/1e-009);

// Result
// The range parameter for NaCl = 0.0316 nm 
