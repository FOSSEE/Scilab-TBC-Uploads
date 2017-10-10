//Example 4.1, Page number 4.32

clc;clear;close

// variable declaration
r1 = 2;                // in radians
r2 = 3;                // in radians
d1 = 4;                // Converting from mm to radians
d2 = 6;                // Converting from mm to radians

// calculations
D = (r2-r1)/(d2*10**3-d1*10**3)   // Divergence

// Result
printf("Divergence = %0.1e radian",D)
