// Scilab Code Ex12.7 Kinetic energy of neutrons: Pg: 248 (2008)
d = 2.2;    // Binding energy of deuterium, MeV
H3 = 8.5;    // Binding energy of tritium, MeV
He4 = 28.3;    // Binding energy of helium, MeV
KE = He4-d-H3;    // Kinetic energy of the neutron, MeV
printf("\nThe kinetic energy of the neutron = %4.1f MeV", KE);
// Result 
// The kinetic energy of the neutron = 17.6 MeV 