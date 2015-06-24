// Scilab Code Ex4.25:: Page-4.36 (2009)
clc; clear;
m = 80;        // Mass of sugar in the solution, g
theta = 9.9;       // Angle of rotation of the plane of polarization, degrees
l = 20;     // Length of the tube, cm
S_pure = 66;         // Specific rotation of pure sugar solution, degrees per dm per (g/cc)
c = 0.08;     // Concentration of sugar solution, g/cc
S = 10*theta/(l*c);  // calculated specific rotation of sugar solution, degrees per dm per (g/cc)
percent_purity = S/S_pure*100;      // Percentage purity of sugar sample, percent

printf("\nThe percentage purity of the sugar sample = %5.2f percent", percent_purity);

// Result 
// The percentage purity of the sugar sample = 93.75 percent 

 
