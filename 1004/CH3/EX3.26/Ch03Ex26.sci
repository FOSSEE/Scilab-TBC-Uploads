// Scilab code: Ex3.26 : Minimum uncertainity in the energy of the excited state of an atom:Pg: 94 (2008)
del_t = 1e-08;    // Life time of an excited state of an atom, seconds
h_bar = 1.054e-034;    // Reduced Plancks constant, joule second
del_E = h_bar/del_t;    // Minimum uncertainity in the energy of excited state, joule
printf("\nThe minimum uncertainity in the energy of the excited state = %5.3e joule", del_E);
// Result
// The minimum uncertainity in the energy of the excited state = 1.054e-026 joule 