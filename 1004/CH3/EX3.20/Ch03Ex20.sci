// Scilab code: Ex3.20 : Minimum uncertainity in the velocity of an electron:Pg: 92 (2008)
m = 9.1e-031;    // Mass of an electron, kg
del_x = 1e-010;    // Length of the box, m
h_bar = 1.054e-034;    // Reduced Plancks constant, joule second
del_v = h_bar/(m*del_x);    // Minimum uncertainity in velocity, m/s
printf("\nThe minimum uncertainity in the velocity of electron = %4.2e m/s ", del_v);
// Result
// The minimum uncertainity in the velocity of electron = 1.16e+006 m/s  