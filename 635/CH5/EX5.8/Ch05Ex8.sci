// Scilab Code Ex5.8 Minimum dislocation density in aluminium Page-164 (2010)
b = 3D-10;    // Magnitude of Burgers vector, m
r = 0.05;    // Radius of curvatur of the aluminium crystal, m
// For n positive edge dislocations
// n*b = L*t/r, solving for n/(L*t)
// n/(L*t) = 1/(r*b), Number of dislocation line piercing through a unit area of the plane of the paper, per Sq.m
d = 1/(r*b);    // Minimum dislocation density in aluminium, number per Sq. m
printf("\nThe minimum dislocation density in aluminium, %4.1e, dislocations per Sq. m", d);
//Result
// The minimum dislocation density in aluminium, 6.7e+010, dislocations per Sq. m