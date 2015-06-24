// Scilab Code Ex12.14 Amount of uranium fuel required for one day operation: Pg: (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
eta = 0.20;    // Efficiency of the nuclear reactor
E1 = 100e+06*24*60*60;    // Average energy required per day, J
m = poly(0,"m");    // Suppose amount of fuel required be m kg
n = m*6.023e+026/235;    // Number of uranium atoms
E = 200e+06*e;    // Energy released per fission of U-235, J
U = E*n;    // Total energy released by fission of U-235, J
E2 = U*eta;    // Useful energy produced by n atoms in a day, J
m = roots(E2-E1);  
printf("\nThe mass of uranium fuel required for one day operation = %6.4f kg/day", m);
// Result
// The mass of uranium fuel required for one day operation = 0.5267 kg/day 