// Scilab Code Ex3.3 Radius of largest sphere that can be placed at the octahedral void: Page-100 (2010)
// For simplicity we may take radius of the atom, R = 1 unit
R = 1;    // Radius of the atom in bcc lattice, unit
// For a bcc lattice, 4*R = a*sqrt(3), solving for a 
a = 4*R/sqrt(3); // lattice parameter of bcc crystal, unit
// Since R + Rx = a/2, solving for Rx
Rx = a/2 - R;  // Radius of the largest sphere that will fit into the octahedral void, unit
printf("\nThe radius of the largest sphere that will fit into the octahedral void is : %5.3fR", Rx);
//Result 
// The radius of the largest sphere that will fit into the octahedral void is : 0.155R