// Scilab code: Ex3.25 : Unertainity in the velocity of an electron:Pg: 94 (2008)
m = 9.1e-31;    // Mass of an electron, kg
del_x = 1e-10;    // Length of box, m
h_bar = 6.6e-034;    // Reduced Plancks constant, joule second
del_v = h_bar/(2*%pi*del_x*m);    // Minimum uncertainity in velocity of an electron, m/s
del_p = m*del_v;    // Uncertainity in Momentum of electron, kgm/s
printf("\nThe uncertainity in the velocity of the electron = %3.2e m/s", del_v);
// Result
// The uncertainity in the velocity of the electron = 1.15e+006 m/s