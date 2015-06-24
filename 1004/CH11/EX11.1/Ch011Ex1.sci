// Scilab code: Ex11.1 : Energy balance of a nuclear reaction: Pg: 229 (2008)
mu = 931.5;    // Energy equivalent of 1 amu, MeV
M_D = 2.0141;    // Mass of deuterium atom, amu
M_He = 3.01603;    // Mass of helium-3, amu
mn = 1.008665;    // Mass of neutron, amu
MD = (2*M_D - M_He - mn);    // Mass defect of the reaction, amu
Q = MD*mu;    // Energy balance of the nuclear reaction, MeV
printf("\nThe energy balance of the nuclear reaction = %4.2f MeV", Q);
// Result
// The energy balance of the nuclear reaction = 3.26 MeV