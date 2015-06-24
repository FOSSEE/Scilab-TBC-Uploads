// Scilab Code Ex1.12 Mean lifetime of a moving meason: Pg: 24 (2008)
c = 1;    // For convenience, speed of light is assumed to be unity
t0 = 2e-08;    // Mean life time of pi-meson at rest, s
v = 0.8*c;    // Velocity of moving pi-meason, m/s
t = t0/sqrt(1-(v/c)^2);    // Mean lifetime of moving pi-meason, s
printf("\nThe mean lifetime of moving meason = %4.2e s", t);
// Result 
// The mean lifetime of moving meason = 3.33e-008 s