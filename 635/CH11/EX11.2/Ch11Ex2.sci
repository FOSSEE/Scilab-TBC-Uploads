// Scilab Code Ex11.2 Determining ratio between K.E. of an electron in 2D square lattice:  Page-370 (2010)
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of an electron, kg
a = 1;    // For simplicity assuming lattice parameter to be unity, m
// Case-I when k_x = k_y = %pi/a
k_x = %pi/a, k_y = %pi/a;    // Wave numbers in X- and Y- directions, rad per metre
E1 = h^2/(8*%pi^2*m)*(k_x^2 + k_y^2);    // Energy of the electron inside a Brilliouin Zone, J
// Case-II when k_x = %pi/a and k_y = 0
k_x = %pi/a, k_y = 0;    // Wave numbers in X- and Y- directions, rad per metre
E2 = h^2/(8*%pi^2*m)*(k_x^2 + k_y^2);    // Energy of the electron inside a Brilliouin Zone, J
E_ratio = E1/E2;    // Ratio between K.E. of an electron in 2D square lattice
printf("\nThe ratio between K.E. of an electron in 2D square lattice = %1d", E_ratio); 
// Result 
// The ratio between K.E. of an electron in 2D square lattice = 2