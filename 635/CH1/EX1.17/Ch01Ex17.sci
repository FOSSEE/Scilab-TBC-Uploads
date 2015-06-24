// Scilab Code Ex 1.17 Angle between two crystal directions: Page-23 (2010)
h1 = 1;k1 = 1;l1 = 1; // Miller indices of first set of planes
h2 = 0;k2 = 0;l2 = 1; // Miller indices of second set of planes
// We know that
// cos(theta) = (h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h1^2+k1^2+l1^2))
// Solving for theta
theta = acos((h1*h2+k1*k2+l1*l2)/(sqrt(h1^2+k1^2+l1^2)*sqrt(h2^2+k2^2+l2^2)));
printf("\nThe angle between [%d%d%d] and [%d%d%d] directions in the cubic crystal, in degrees, is : %4.2f", h1,k1,l1,h2,k2,l2, theta*180/%pi);

// Result 
// The angle between [111] and [001] directions in the cubic crystal, in degrees, is :
//     54.74

