// Scilab Code Ex4.8:: Page-4.9 (2009)
clc; clear;
ip = 60;        // Polarizing angle, degrees
mu = tand(ip);  // Brewster's law giving refractive index
A = 60;     // Angle of prism, degrees
d = (mu - 1)*A; // Angle of minimum deviation for green light, degrees

printf("\nThe angle of minimum deviation for green light = %5.2f degrees", d);

// Result 
// The angle of minimum deviation for green light = 43.92 degrees 
 
