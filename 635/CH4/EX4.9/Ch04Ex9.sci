// Scilab Code Ex4.10 Calculating metallic diameter and unit cell dimension of aluminium: Page-146 (2010)
Z_Al = 13;    // Atomic number of aluminium
A_Al = 26.98;    // Atomic mass of aluminium, g
d_Al = 2700D3;    // Density of aluminium, g per metre cube
n = 4;    // number of atoms in the fcc structure of aluminium
N = 6.023D+23;    // Avogadro's number
// We have number of atoms per fcc unit cell given as 
// n = (V*d_Al*N)/A_Al, solving for V
// V = (n*A_Al)/(d_Al*N), V is the volume of the unit cell
// or a^3 = (n*A_Al)/(d_Al*N), solving for a 
a = ((n*A_Al)/(d_Al*N))^(1/3);    // unit cell parameter of aluminium
// For an fcc structure we have 
// sqrt(2)*a = 4*R = 2*D, solving for D
D = a/sqrt(2);    // metallic diameter of aluminium having fcc structure
printf("\nThe unit cell dimension of aluminium, is : %4.2f angstrom", a/1D-10);
printf("\nThe metallic diametre of aluminium, is : %4.2f angstrom", D/1D-10);
//Result
// The unit cell dimension of aluminium, is : 4.05 angstrom
// The metallic diametre of aluminium, is : 2.86 angstrom