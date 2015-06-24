// Scilab Code Ex5.6 : Brewster angle at the boundary between two materials : Page-114 (2010)
C = 52;    // Critical angle for total internal reflection at a boundary between two materials, degrees
// From Brewster's law, tand(i_B) = 1_mu_2
// Also sind(C) = 1_mu_2, so that
// tand(i_B) = sind(C), solving for i_B
i_B = atand(sind(C));    // Brewster angle at the boundary, degrees
printf("\nThe Brewster angle at the boundary between two materials = %2d degrees", i_B);

// Result 
// The Brewster angle at the boundary between two materials = 38 degrees 