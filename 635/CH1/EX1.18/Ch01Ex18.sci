// Scilab Code Ex 1.18 Angle between two directions of cubic crystal: Page-23(2010)
h1 = 1; k1 = 1; l1 = 1 // Miller indices for first set of planes
h2 = -1; k2 = -1; l2 = 1;    // Miller indices for second set of planes
// We know that
// cos(theta) = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2))
// Solving for theta
theta = acos((h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2)));
printf("\nThe angle between [%d%d%d] and [%d %d %d] directions in the cubic crystal, in degrees, is : %4.1f", h1,k1,l1,h2,k2,l2, theta*180/%pi);

// Result 
// The angle between [111] and [-1-1 1] directions in the cubic crystal, in degrees, is :
//     109.5

