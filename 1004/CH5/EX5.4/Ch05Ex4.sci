// Scilab Code Ex5.4 Angle between l and s for 2D(3/2) state: Pg:146 (2008)
// For 2D(3/2) state
l = 2;    // Orbital quantum number
s = 1/2;    // Spin quantum number
j = l+s;    // Total quantum number
// Now by cosine rule of L-S coupling
// cos(theta) = (j*(j+1)-l*(l+1)-s*(s+1))/(2*sqrt(s*(s+1))*sqrt(l*(l+1))), solving for theta
theta = acosd((l*(l+1)+s*(s+1)-j*(j+1))/(2*sqrt(s*(s+1))*sqrt(l*(l+1))));    // Angle between l and s for 2D(3/2) state
printf("\nThe angle between l and s for 2D(3/2) state = %5.1f degrees", theta);
// Result 
// The angle between l and s for 2D(3/2) state = 118.1 degrees 