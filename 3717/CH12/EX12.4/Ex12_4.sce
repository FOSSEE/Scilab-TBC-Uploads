// Ex12_4 Page:247 (2014)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J
k = 1.38e-023;  // Boltzmann constant, J/K
N_A = 6.023e+026;    // Avogadro's number/k-mol
T = 27+273;    // Room temperature, K
E_F = 2;    // Fermi energy
C = (%pi^2*k^2*N_A*T)/(2*E_F*e);    // Electronic specific heat of potassium, J/k-mol/K
printf("\nThe electronic specific heat of potassium = %3d J/k-mol/K", C);

// Result
// The electronic specific heat of potassium = 530 J/k-mol/K 
