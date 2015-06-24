// Scilab code: Ex3.19 : Total energy of the three electron system:Pg: 87 (2008)
m = 9.1e-031;    // Mass of an electron, kg
h = 6.624e-034;    // Plancks constant, joule second
a = 1e-010;    // Length of the molecule, m
E = 6*h^2/(8*m*a^2);    // Energy of three electron system, joule
printf("\nThe total energy of three electron system = %6.2f, eV ", E/1.6e-019);
// Result
// The total energy of three electron system = 226.02, eV  