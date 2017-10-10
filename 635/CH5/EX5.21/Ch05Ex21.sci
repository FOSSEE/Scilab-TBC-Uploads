// Scilab Code Ex5.21 Determining tilt angle from dislocation spacing in the boundary of Cu: Page-188 (2010)
a = 3.61e-010;    // Lattice parameter of Cu, m
b = a/sqrt(2);    // Burger vector magnitude for fcc Cu, m
h = 1.5e-06;    // The vertical spacing between two neighbouring edge dislocations, m
theta = atand(b/h)*(%pi/180);    // tangent of tilt angle between two tilt boundaries of Cu, radian
printf("\nThe tilt angle between two tilt boundaries of Cu = %3.1e radian", theta);
// Result
// The tilt angle between two tilt boundaries of Cu = 1.7e-004 radian