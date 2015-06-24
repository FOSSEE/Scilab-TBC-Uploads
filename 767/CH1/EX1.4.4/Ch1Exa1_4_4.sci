// Scilab code Exa1.4.4 : To determine the density of U-235 nucleus : Page 34 (2011)
m = 1.66e-027;    // Mass of a nucleon, kg
A = 235; // Atomic mass of U-235 nucleus
M = A*m;    //Mass of the U-235 nucleus, kg
r0 = 1.2e-015; // Distance of closest approach, m
r = r0*(A)^(1/3); // Radius of the U-235 nucleus
V = 4/3*(%pi*r^3); // Volume of the U-235 nucleus,m^3
d = M/V; // Density of the U-235 nucleus,kg/m^3
printf("\nThe density of U-235 nucleus : %4.2e kg per metre cube",d)

// Result
// The density of U-235 nucleus : 2.29e+017 kg per metre cube