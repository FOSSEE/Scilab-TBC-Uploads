// Scilab Code Ex14.1 Polarization of water molecule: Page-456 (2010)
NA = 6.023e+23;    // Avogadro's number
p = 6e-030;    // Dipole moment of water molecule, C-m
r = 1e-03;    // Radius of water molecule, m
M = 18e-03;       // Molecular weight of water, kg
d = 1e+03;    // Density of water, kg per metre cube
V = M/d;    // Volume of water, metre cube
// Now M/d metre cube volume will contain NA = 6.023e+023 water molecules, so that 4*%pi/3*(r^3) metre cube volume will contain 
N = NA*d*4*%pi*r^3/(M*3);    // Number of water molecules per metre cube
P = N*p;    // Polarization of water molecules, coulomb per metre square
printf("\nThe polarization of water molecules = %3.1e coulomb per metre square", P);
// Result 
// The polarization of water molecules = 8.4e-010 coulomb per metre square 

