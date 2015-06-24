// Scilab Code Ex4.3:: Page-4.6 (2009)
clc; clear;
mu = 1.53;  // Refractive index of the material from Brewster's law 
// As mu = tand(ip), solving for ip
ip = atand(mu);     // Polarizing angle, degrees
// But mu = sind(ip)/sind(r), solving for r
r = asind(sind(ip)/mu);     // Angle of refraction, degrees

printf("\nThe angle of refraction of the ray = %4.1f degrees", r);

// Result 
// The angle of refraction of the ray = 33.2 degrees 
