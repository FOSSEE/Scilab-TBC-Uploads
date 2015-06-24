// Scilab code: Ex3.22 : Uncertainity in the position of an electron:Pg: 93 (2008)
m = 9.1e-031;    // Mass of an electron, kg
v = 600;    // Speed of electron, m/s
h_bar = 6.6e-034;    // Reduced Plancks constant, joule second
p = m*v;    // Momentum of electron, kgm/s
del_p = 5e-05*m*v;    // Minimum uncertainity in momentum, kgm/s
del_x = h_bar/(4*%pi*del_p);    // Uncertainity in position, m
printf("\nThe uncertainity in the position of the electron = %5.3f mm", del_x/1e-03);
// Result
// The uncertainity in the position of the electron = 1.924 mm 