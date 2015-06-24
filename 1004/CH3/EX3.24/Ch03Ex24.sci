// Scilab code: Ex3.24 : Unertainity in the position of an electron:Pg: 94 (2008)
m = 9.1e-31;    // Mass of an electron, kg
v = 300;    // Speed of electron, m/s
h_bar = 6.6e-034;    // Reduced Plancks constant, joule second
p = m*v;    // Momentum of electron, kgm/s
del_p = 1e-04*p;    // Minimum uncertainity in momentum, kgm/s
del_x = h_bar/(4*%pi*del_p);    // Uncertainity in position, m
printf("\nThe uncertainity in the position of the electron = %5.3f mm", del_x/1e-03);
// Result
//  The uncertainity in the position of the electron = 1.924 mm 