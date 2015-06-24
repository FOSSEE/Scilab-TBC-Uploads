// Scilab code: Ex3.18 : Lowest energy of two electron system:Pg: 87 (2008)
m = 9.1e-031;    // Mass of an electron, kg
a = 1e-010;    // Length of box, m
h = 6.624e-034;    // Plancks constant, joule second
E = 2*h^2/(8*m*a^2);    // Energy of two electron system, joule
printf("\nThe lowest energy of two electron system = %4.1f, eV", E/1.6e-019);
// Result
// The lowest energy of two electron system = 75.3, eV 