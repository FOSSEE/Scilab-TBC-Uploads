// Scilab Code Ex6.8 : Actual volume occupied by the spheres in fcc structure  Page-136 (2010)
N = 8*1/8 + 6*1/2;    // total number of spheres in a unit cell
a = 1;    // For convenience, assume interatomic spacing to be unity, m
r = a/(2*sqrt(2));    // The atomic radius, m
V_atom = N*4/3*%pi*r^3;    // Volume of atoms, metre cube
V_uc = a^3;    // Volume of unit cell, metre cube
printf("\nThe percentage of actual volume occupied by the spheres in fcc structure = %4.2f percent", V_atom/V_uc*100);

// Result
// The percentage of actual volume occupied by the spheres in fcc structure = 74.05 percent  