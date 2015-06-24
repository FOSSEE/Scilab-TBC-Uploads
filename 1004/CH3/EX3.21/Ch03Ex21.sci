// Scilab code: Ex3.21 : Uncertainity in momentum and kinetic energy of the proton:Pg: 92 (2008)
m = 1.67e-027;    // Mass of a proton, kg
del_x = 1e-014;    // Uncertainity in position, m
h_bar = 1.054e-034;    // Reduced Plancks constant, joule second
del_p = h_bar/del_x;    // Minimum uncertainity in momentum, kgm/s
del_E = del_p^2/(2*m);    // Minimum uncertainity in kinetic energy, joule
printf("\nThe minimum uncertainity in momentum of the proton = %5.3e kgm/s", del_p);
printf("\nThe minimum uncertainity in kinetic energy of the proton = %5.3e eV", del_E/1.6e-019);
// Result
// The minimum uncertainity in momentum of the proton = 1.054e-020 kgm/s
// The minimum uncertainity in kinetic energy of the proton = 2.079e+005 eV 