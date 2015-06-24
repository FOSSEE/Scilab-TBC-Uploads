// Scilab code: Ex3.16 : Zero point energy of system:Pg: 86 (2008)
m = 9.1e-031;    // Mass of an electron, kg
a = 1e-010;    // Length of box, m
h = 6.624e-034;    // Plancks constant, joule second
n = 1;    // Principal quantum number for the lowest energy level
E1 = 2*h^2/(8*m*a^2);    // Energy for the two electron system in the n =1 energy level, joule
E2 = 8*(2^2*h^2)/(8*m*a^2);    // Energy for the eight electron system in the n = 2 energy level, joule
E = E1 +E2;    // Total lowest energy of system, joule
printf("\nThe zero point energy of system = %4.2e J ", E);
// Result
// The zero point energy of system = 2.05e-016 J  