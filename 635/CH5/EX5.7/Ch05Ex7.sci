// Scilab Code Ex5.7 Dislocation density of bcc structure of iron Page-163 (2010)
L = 0.15;    // Length of the strip, m
t = 0.02;    // Thickness of the iorn strip, m
r = 0.12;    // Radius of curvature of the bent, m
a = 2.81D-10;    // Lattice parameter of the bcc structure of iron, m
b = sqrt(3)*a/2;    // Magnitude of Burger vector, m
// For n positive edge dislocations
// n*b = L*t/r, solving for n/(L*t)
// n/(L*t) = 1/(r*b), Number of dislocation line piercing through a unit area of the plane of the paper, per metre square
d = 1/(r*b);    // Dislocation density in bcc structure of iron, number per metre square
printf("\nThe dislocation density in bcc structure of iron : %4.2e, dislocations per Sq. m", d);
//Result
// The dislocation density in bcc structure of iron : 3.42e+010, dislocations per Sq. m