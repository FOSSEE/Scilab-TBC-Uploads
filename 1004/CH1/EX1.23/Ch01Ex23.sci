// Scilab Code Ex1.23 Energy released in fission: Pg: 30 (2008)
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Charge on an electron, coulomb
r0 = 1.2e-015;    // Equilibrium nuclear radius, m
A = 238;    // Twice the mass of each fragment
q1 = 46*e;    // Charge on first fragment, coulomb
q2 = 46*e;    // Charge on second fragment, coulomb
R = r0*(A/2)^(1/3);
d = 2*R;    // Distance between two fragments, m
U = q1*q2*9e+09/d;    // Energy released in fission, J
printf("\nThe energy released in fission of U(92,238) = %3d MeV", U/(e*1e+06));
// Result 
// The energy released in fission of U(92,238) = 258 MeV  