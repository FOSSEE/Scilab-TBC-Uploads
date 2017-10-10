// Ex1_3 Page:12 (2014)
clc; clear;
c = 1;  // For simplicity assume speed of light to be unity, m/s
L0 = 1; // For simplicity assume the classical length of the rod to be unity, m
d = 1;   // Percentage difference of relativistic length from the classical length
L = (1 - d/100)*L0;   // Relativistic length, m
v = poly(0, "v");   // Declare speed variable
v = roots(1 - v^2 - (L/L0)^2);    // Relativistic speed of the moving object
printf("\nThe speed at which the relativistic value for length differ from the classical value by one percent = %5.3fc", v(1));

// Result
// The speed at which the relativistic value for length differ from the classical value by one percent = 0.141c 
