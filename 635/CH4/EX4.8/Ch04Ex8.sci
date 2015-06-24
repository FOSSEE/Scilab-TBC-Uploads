// Scilab Code Ex4.9 Calculating metallic radii from unit cell dimensions: Page-146 (2010)
a_Au = 4.08e-10;    // Unit cell dimension of fcc structure of gold, m
a_Pt = 3.91e-10;    // Unit cell dimension of fcc structure of platinum, m
// For fcc structure we have
//        sqrt(2)*a = 4*R, solving for R
R_Au = sqrt(2)/4*a_Au;    // Metallic radius of gold atom, m
R_Pt = sqrt(2)/4*a_Pt;    // Metallic radius of gold atom, m
printf("\nThe metallic radius of gold atom, in angstrom, is : %4.2f", R_Au/1D-10);
printf("\nThe metallic radius of platinum atom, in angstrom, is : %4.2f", R_Pt/1D-10);
//Result
// The metallic radius of gold atom, in angstrom, is : 1.44
// The metallic radius of platinum atom, in angstrom, is : 1.38