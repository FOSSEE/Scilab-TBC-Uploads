// Scilab Code Ex4.6:: Page-4.8 (2009)
clc; clear;
E0 = 1;     // For simplicity assume maximum intensity through polarizer and analyser to be unity, unit
E = 1/6*E0; // One-sixth of the maximum intensity, unit
// From Malus law, E = E0*cosd(theta)^2, solving for theta
theta = acosd(sqrt(E));   // Angle through which analyser should be rotated, degrees
printf("\nThe angle of rotation of analyser = %4.1f degrees", theta);

// Result 
// The angle of rotation of analyser = 65.9 
