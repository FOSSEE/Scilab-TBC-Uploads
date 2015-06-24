// Scilab Code Ex5.17 Change in number of vacancies due to disloaction motion: Page-176 (2010)
l = 1e-03;    // Edge dislocation length of simple cubic crystal, m
d = 1e-06;    // Distance of dislocation climb in, m
a = 3e-10;    // Lattice parameter of scc, m
A = a^2;    // Area of the unit cell, metre square
A_affected = l*d;    // Affected area when the dislocation climbs down, metre square
// N.B.: Area of one unit cell in scc contributes one atom
N = A_affected/A;    // Number of vacancies created within the affected area
printf("\nThe number of vacancies lost or created = %3.1e", N);
// Result
// The number of vacancies lost or created = 1.1e+010