// Scilab Code Ex10.7: Page-512 (2011)
clc;clear;
m = 9.1e-031;....// Mass of the electron, kg
e = 1.6e-019;....// Charge on an electron, C
g = 9.8;....// Acceleration due to gravity, m/sec-square
// Electric force, F = e*E, where F = m*g or e*E = m*g
E = m*g/e;    // Electric field which would balance the weight of an electron placed in it, N/C
printf("\nThe required electric field strength = %3.1e N/C", E);
printf("\nThis field acts opposite to the direction of weight");

// Result
// The required electric field strength = 5.6e-011 N/C
// This field acts opposite to the direction of weight 



