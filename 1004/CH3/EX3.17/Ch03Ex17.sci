// Scilab code: Ex3.17 : Mean energy per electron at 0K:Pg: 86 (2008)
m = 9.1e-031;    // Mass of an electron, kg
a = 50e-010;    // Length of molecule, m
h = 6.624e-034;    // Plancks constant, joule second
E = h^2/(8*m*a^2);    // Energy per electron, joule
printf("\nThe mean energy per electron at 0K = %3.1e eV ", E/1.6e-019);
// Result
// The mean energy per electron at 0K = 1.5e-002 eV 