// Scilab code Exa2.2.7 To calculate coulomb energy and surface energy for U(92,236) : Page 71 (2011)
Z = 92; // Atomic number of U-236
e = 1.6e-019; // Charge of an electron, C
A = 236; // Mass number of U-236
K = 8.98e+09; // Coulomb constant,
r_o = 1.2e-015; // Distance of closest approach, m
a_s = -16.8; // Surface constant
E_c = -(3*K*Z*(Z-1)*e^2)/(5*r_o*A^(1/3)*1.6e-013); // Coulomb energy, MeV
E_s = a_s*A^(2/3); // Surface energy, MeV   
printf("\nCoulomb energy for U(92,236)  = %5.1f MeV \nSurface energy for U(92,236)   = %5.1f MeV  ", E_c, E_s)
//   Result
//  Coulomb energy for U(92,236)  = -973.3 MeV 
//   Surface energy for U(92,236)   = -641.6 MeVS