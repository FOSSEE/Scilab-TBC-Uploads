// Scilab Code Ex3.5 Diameter of the largest atom that would fit into the tetrahedral void:5 Page-101 (2010)
a = 3.52D-10;    // Lattice parameter for Ni, m
// For an fcc lattice, sqrt(2)*a = 4*R, solving for R
R = sqrt(2)*a/4;    // Radius of the atom in fcc lattice, m
R_oct = 0.414*R;    // Radius of the octahedral void in fcc close packing, m
D = 2*R_oct;    // Diameter of the octahedral void in the fcc structure of nickel, m
disp(D/1D-10, "The diameter of the octahedral void in the fcc structure of nickel, in angstrom, is : ");
//Result 
// The diameter of the octahedral void in the fcc structure of nickel, in angstrom, is :  
// 1.0304526