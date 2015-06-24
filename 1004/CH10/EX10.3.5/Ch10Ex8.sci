// Scilab Code Ex10.3.5 Energy released during fusion of two deuterons: Pg: 221 (2008)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
x = 1.1;    // Binding energy per nucleon of deuterium, MeV
y = 7.0;    // Binding energy per nucleon of helium-4, MeV
E = (y - 2*x)*1e+06*e;    // Energy released when two deutron nuclei fuse together, MeV
printf("\nThe binding energy per nucleon of deuterium = %4.2e J", E);
// Result 
// The binding energy per nucleon of deuterium = 7.68e-013 J 