// Scilab Code Ex5.22 Determining tilt angle from dislocation spacing in the boundary of Cu: Page-188 (2010)
b = 0.4e-09;    // Burger vector magnitude for fcc Cu, m
h = 3.0e-06;    // The vertical spacing between two neighbouring edge dislocations, m
theta = atand(b/h)*(%pi/180);    // tangent of tilt angle between two tilt boundaries of Cu, radian
printf("\nThe tilt angle between two tilt boundaries of Cu = %4.2e radian", theta);
// Result
// The tilt angle between two tilt boundaries of Cu = 1.33e-004 radian