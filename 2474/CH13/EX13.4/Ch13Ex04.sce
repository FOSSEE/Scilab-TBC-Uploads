// Scilab code Ex13.4: Pg.640 (2008)
clc; clear;
theta = 0.77233;    // Parallax angle, arc-second
// Since theta = 1 AU/r, solving for r, we get
r = 1/theta;    // Distance of Proxima Centauri from sun, pc
printf("\nThe distance of Proxima Centauri from the sun = %6.4f pc or %4.2f c.y", r, r*3.26);

// Result
// The distance of Proxima Centauri from the sun = 1.2948 pc or 4.22 c.y 