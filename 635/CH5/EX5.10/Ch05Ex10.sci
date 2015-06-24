// Scilab Code Ex5.10 Determining resolved componet of shearing force in a given direction: Page-168 (2010)
h1 = 1; k1 = 1; l1 = 1 // Miller indices for first set of planes
h2 = 1; k2 = 1; l2 = 0;    // Miller indices for second set of planes
F_111 = 660;    // Shearing force along [111] direction, N
cos_theta = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [1 -1 0] and [100] directions
// As F_110/F_111 = cos_theta, solving for F_110
F_110 = F_111*cos_theta;    // Resolved component of shearing force along [110] direction, N
printf("\nThe resolved component of shearing force along [110] direction, F_110 = %3d N", F_110);
// Result
// The resolved component of shearing force along [110] direction, F_110 = 538 N