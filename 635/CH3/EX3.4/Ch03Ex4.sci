// Scilab Code Ex3.4 Radius of largest sphere that can be placed at the tetrahedral void: Page-100 (2010)
// For simplicity we may take radius of the atom, RL = 1 unit
RL = 1;    // Radius of the atom in bcc lattice, unit
// For a bcc lattice, 4*RL = a*sqrt(3), solving for a 
a = 4*RL/sqrt(3); // Lattice parameter of bcc crystal, unit
// Further RL + Rx = sqrt(5)*a/4, solving for Rx
Rx = sqrt(5)*a/4-RL;  // Radius of the largest sphere that will fit into the octahedral void, unit
printf("\nThe radius of the largest sphere that will fit into the tetrahedral void is : %5.3fRL", Rx);
//Result 
// The radius of the largest sphere that will fit into the tetrahedral void is : 0.291RL