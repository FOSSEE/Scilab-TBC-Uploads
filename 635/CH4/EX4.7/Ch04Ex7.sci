// Scilab Code Ex4.8 Calculating metallic radius from unit cell dimension: Page-146 (2010)
a = 2.81D-10;    // Unit cell dimension of bcc structure of iron, m
// For bcc structure we have
//        sqrt(3)*a = 4*R, solving for R
R = sqrt(3)/4*a;    // Metallic radius of iron atom, m
printf("\nThe metallic radius of iron atom is %4.2f angstrom", R/1D-10);
//Result
// The metallic radius of iron atom is 1.22 angstrom 