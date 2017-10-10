// Ex15_4 Page:298 (2014)
clc;clear;
lambda = 693e-009;    // Wavelength of laser beam, m
D = 3e-003;    // Diameter of the mirror, m
d = 300e+003;    // Height of satellite above the surface of earth, m
delta_theta = 1.22*lambda/D;    // Angular spread of the laser beam, rad
a = delta_theta*d;    // Diameter of the laser beam on the satellite, m
printf("\nThe angular spread of the laser beam = %4.2e rad", delta_theta);
printf("\nThe diameter of laser beam on the satellite = %4.1f m", a);

// Result
// The angular spread of the laser beam = 2.82e-004 rad
// The diameter of laser beam on the satellite = 84.5 m 