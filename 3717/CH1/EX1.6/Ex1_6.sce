// Ex1_6 Page:15 (2014)
clc; clear;
c = 1;  // For simplicity assume speed of light to be unity, m/s
m0 = 1; // For simplicity assume the rest mass, kg
d = 1;   // Percentage difference of relativistic mass from the rest mass, kg
m = m0*(1+20/100);   // Effective mass of the body while moving, kg
v = poly(0, "v");   // Declare speed variable
v = roots(1 - (v/c)^2 - (m0/m)^2);    // Relativistic speed of the moving body
printf("\nThe relativistic speed of the moving body = %5.3fc", v(1));

// Result
// The relativistic speed of the moving body = 0.553c 
