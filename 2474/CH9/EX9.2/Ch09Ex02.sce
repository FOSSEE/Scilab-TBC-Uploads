// Scilab code Ex9.2: Pg.367 (2008)
clc; clear;
E_ex = 0.72;    // Potential energy due to exclusion-principle repulsion, eV
k = 9e+09;    // Coulomb constant, N-metre-square/coulomb-square
e = 1.602e-019;    // Charge on an electron, C
r0 = 0.193;    // Equilibrium separation of Na+ & F- ions, nm
F_C = k*e^2/(r0^2*e*1e-09);    // Net Coulomb force, eV/nm
n = F_C/E_ex*r0;    // Power of r in repulsion principle relation 
A = E_ex*r0^floor(n);    // Repulsion constant, eV-nm^10
printf("\nIn the exclusion-principle replusion relation, \nA = %3.1e eV-nm^10 and n = %d", A, n);

// Result
// In the exclusion-principle replusion relation, 
// A = 5.2e-008 eV-nm^10 and n = 10 