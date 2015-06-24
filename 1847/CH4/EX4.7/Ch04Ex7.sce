// Scilab Code Ex4.7:: Page-4.8 (2009)
clc; clear;
E0 = 1;     // For simplicity assume maximum intensity through polarizer and analyser to be unity, unit
light_fraction = [0.25 0.45 0.65 0.75 0.0];
for i = 1:1:5
E = light_fraction(i)*E0; // Light fraction of the maximum intensity, unit
// From Malus law, E = E0*cosd(theta)^2, solving for theta
theta = acosd(sqrt(E));   // Angle through which analyser should be rotated, degrees
printf("\nE = %4.2fE0, theta = %4.1f degrees", light_fraction(i), theta);
end

// Result 
// E = 0.25E0, theta = 60.0 degrees
// E = 0.45E0, theta = 47.9 degrees
// E = 0.65E0, theta = 36.3 degrees
// E = 0.75E0, theta = 30.0 degrees
// E = 0.00E0, theta = 90.0 degrees 
