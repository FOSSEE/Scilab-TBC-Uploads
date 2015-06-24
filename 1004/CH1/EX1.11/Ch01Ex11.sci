// Scilab Code Ex1.11 Variation of space and time: Pg: 23 (2008)
L = 0.5;    // Shortened length of the rod, m
L0 = 1;    // Actual length of the rod, m
t0 = 1;    // Actual time on the spaceship, s
c = 3e+08;    // Speed of light, m/s
v = sqrt(1 - (L/L0)^2)*c;    // Speed of the spaceship, m/s
t = t0/sqrt(1 - (v/c)^2);       // Dilated time for stationary observer, s
printf("\nThe speed of light = %5.3e m/s", v);
printf("\nThe time dilation corresponding to 1 s on the spaceship = %d s", round(t));
// Result 
// The speed of light = 2.598e+008 m/s
// The time dilation corresponding to 1 s on the spaceship = 2 s