// Scilab Code Ex8.2: Page-171 (2010)
c = 1;    // For simplicity assume speed of light to be unity, m/s
v = 0.9*c;    // Speed at which beam of particles travel, m/s
delta_t = 5e-006;    // Mean lifetime of particles as observed in the Lab. frame, s
delta_tau = delta_t*sqrt(1-(v/c)^2);    // Proper lifetime of particle as per Time Dilation rule, s
printf("\nThe proper lifetime of particle = %4.2e s", delta_tau);

// Result
// The proper lifetime of particle = 2.18e-006 s

