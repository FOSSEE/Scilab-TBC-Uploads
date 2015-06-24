// Scilab Code Ex5.16 Dislocation width in copper: Page-175 (2010)
mu = 1;    // For simplicity, assume shear modulus of copper to be unity, netwon per metre square
tau_PN = mu/1e+05;    // Shear stress to initiate plastic deformation, newton per metre square
a = 3.61e-010;    // Lattice parameter of copper, m
b = a/sqrt(2);    // Burger vector magnitude for fcc crystal of copper, m
// As stress necessary to move a dislocation in a crystal is given by 
// tau_PN = mu*exp(-2*%pi*w/b), solving for w
w = b*log(mu/tau_PN)/(2*%pi);    // Width of the dislocation in copper, m
printf("\nThe width of dislocation in copper = %4.2e angstrom", w/1d-10);
// Result
// The width of dislocation in copper = 4.68e-010 angstrom 