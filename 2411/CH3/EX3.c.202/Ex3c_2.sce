// Scilab Code Ex3c.2: Page-184 (2008)
clc; clear;
I2 = 1;    // Assume intensity of light beam from the second source to be unity
I1 = 81*I2;    // Intensity of light beam from the first source
a = sqrt(I1);    // Width of the first slit, mm
b = sqrt(I2);    // Width of the second slit, mm
I_max = (1+a/b)^2;    // Maximum intensity in the fringe pattern
I_min = (1-a/b)^2;    // Minimum intensity in the fringe pattern
fact = gcd([I_max,I_min]); // Find l.c.m. of I_max and I_min
printf("\nThe ratio of maximum to minimum intensity in the fringe system, I_max:I_min = %d:%d", I_max/4, I_min/4);

// Result
// The ratio of maximum to minimum intensity in the fringe system, I_max:I_min = 25:16 