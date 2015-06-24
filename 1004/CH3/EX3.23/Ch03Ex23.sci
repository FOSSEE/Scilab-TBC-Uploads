// Scilab code: Ex3.23 : Uncertainity in the position of a bullet:Pg: 93 (2008)
m = 0.025;    // Mass of an bullet, kg
v = 400;    // Speed of bullet, m/s
h_bar = 6.6e-034;    // Reduced Plancks constant, joule second
p = m*v;    // Momentum of bullet, kgm/s
del_p = 2e-04*p;    // Minimum uncertainity in momentum, kgm/s
del_x = h_bar/(4*%pi*del_p);    // Uncertainity in position, m
printf("\nThe uncertainity in the position of the bullet = %5.3e m", del_x);
// Result
//  The uncertainity in the position of the bullet = 2.626e-032 m 