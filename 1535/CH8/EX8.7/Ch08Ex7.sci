// Scilab Code Ex8.7: Page-173 (2010)
c = 3e+008;    // Speed of light in vacuum, m/s
tau = 2.6e-008;    // Mean lifetime the particle in its own frame, s
d = 20;    // Distance which the unstable particle travels before decaying, m
// As t = d/v and also t = tau/sqrt(1-(v/c)^2), so that
// d/v = tau/sqrt(1-(v/c)^2), solving for v
v = sqrt(d^2/(tau^2+(d/c)^2));    // Speed of the unstable particle in Lab. frame, m/s
printf("\nThe speed of the unstable particle in Lab. frame = %3.1e m/s", v)

// Result
// The speed of the unstable particle in Lab. frame = 2.8e+008 m/s