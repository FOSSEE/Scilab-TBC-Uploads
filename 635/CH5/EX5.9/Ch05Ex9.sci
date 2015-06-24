// Scilab Code Ex5.9 Determining total force from its resolved component in a given direction: Page-168 (2010)
h1 = 1; k1 = -1; l1 = 0 // Miller indices for first set of planes
h2 = 1; k2 = 0; l2 = 0;    // Miller indices for second set of planes
F_100 = 130;    // Resolved component of force along [100] direction, N
cos_theta = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2));    // Cosine of angle between [1 -1 0] and [100] directions
// As F/F_100 = cos_theta, solving for F
F_110 = F_100/cos_theta;    // Applied force along [1 -1 0] direction, N
printf("\nThe applied force along [1-10] direction = %3d N", F_110);
// Result
// The applied force along [1-10] direction = 183 N 