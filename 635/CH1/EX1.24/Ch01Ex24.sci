// Scilab Code Ex 1.24 Miller-Bravias indices for Miller indices: Page-29 (2010)
function [i] = f(h,k)
    i = -(h + k);
endfunction     
h1 = 1; k1 = 1; l1 = 0 ;  // First set of Miller indices
h2 = 1; k2 = -1; l2 = 0;    // Second set of miller indices
h3 = 3; k3 = 4; l3 = 5;    // Third set of miller indices
h4 = 3; k4 = -4; l4 = 5;    // Fourth set of miller indices
printf("\nThe Miller-Bravias indices corresponding to the miller indices (%d %d %d), = (%d %d %d %d)", h1, k1, l1, h1, k1, f(h1,k1), l1);
printf("\nThe Miller-Bravias indices corresponding to the miller indices (%d %d %d), = (%d %d %d %d)", h2, k2, l2, h2, k2, f(h2,k2), l2);
printf("\nThe Miller-Bravias indices corresponding to the miller indices (%d %d %d), = (%d %d %d %d)", h3, k3, l3, h3, k3, f(h3,k3), l3);
printf("\nThe Miller-Bravias indices corresponding to the miller indices (%d %d %d), = (%d %d %d %d)", h4, k4, l4, h4, k4, f(h4,k4), l4);

// Result 
// The Miller-Bravias indices corresponding to the miller indices (1 1 0), = (1 1 -2 0)
// The Miller-Bravias indices corresponding to the miller indices (1 -1 0), = (1 -1 0 0)
// The Miller-Bravias indices corresponding to the miller indices (3 4 5), = (3 4 -7 5)
// The Miller-Bravias indices corresponding to the miller indices (3 -4 5), = (3 -4 1 5)