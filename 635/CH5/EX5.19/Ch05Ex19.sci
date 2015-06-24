// Scilab Code Ex5.19 Elastic energy of line imperfection stored in Al: Page-178 (2010)
rho = 1e+010;    // Dislocation density of Al, per metre square
mu = 25.94e+09;    // Shear molulus of aluminium, newton per metre square
a = 4.05e-010;    // Lattice parameter of aluminium, m
b = a/sqrt(2);    // Burger vector magnitude for fcc crystal of Al, m
E_bar = mu*b^2/2;    // Elastic energy per unit length of the dislocation, joule per metre
E = E_bar*rho;    // Elastic energy stored in the crystal, joule per metre cube
printf("\nThe elastic energy stored in the crystal = %5.2f joule per metre cube", E);
// Result
// The elastic energy stored in the crystal = 10.64 joule per metre cube