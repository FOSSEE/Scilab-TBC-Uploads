// Scilab Code Ex3.1 Packing of equal spheres in two dimensional square lattice:  Page-88 (2010)
// Here we may assume square of unit length i.e. a = 1 such that radius of sphere, R = a/2 = 0.5
a = 1;     // Length of the side of the square, unit
R = a/2;     // Radius of the sphere, unit
r = (sqrt(2)-1)*R; // Radius of the sphere introduced within the void produced by the packing of equal spheres on square lattice, unit
A = %pi*R^2; // Area associated with a sphere, square units
FA = a^2-A;    // Free area occupied by void in square lattice, square units
FA_per = FA*100;    // Percentage free area in square lattice 
printf("\nFree area in square lattice is : %4.1f percent", FA_per);
//Result 
// Free area in square lattice is : 21.5 percent