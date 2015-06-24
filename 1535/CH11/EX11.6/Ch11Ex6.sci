// Scilab Code Ex11.6:Page-251 (2010)
lambda = 693e-009;    // Wavelength of laser beam, m
D = 3e-003;    // Diameter of laser beam, m
d_theta = 1.22*lambda/D;    // Angular spread of laser beam, rad
d = 300e+003;    // Height of a satellite above the surface of earth, m
a = d_theta*d;    // Diameter of the beam on the satellite, m
printf("\nThe height of a satellite above the surface of earth = %4.2e rad", d_theta);
printf("\nThe diameter of the beam on the satellite = %4.1f m", a);

// Result
// The height of a satellite above the surface of earth = 2.82e-004 rad
// The diameter of the beam on the satellite = 84.5 m 