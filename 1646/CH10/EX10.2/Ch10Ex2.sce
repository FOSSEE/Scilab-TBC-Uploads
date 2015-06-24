// Scilab Code Ex10.2: Page-507 (2011)
clc;clear;
q1 = 1e-009;    // Charge at first corner, C
q2 = 2e-009;    // Charge at second corner, C
q3 = 3e-009;    // Charge at third corner, C
d = 1;....// Side of the equilateral triangle, m
theta = 30;....// Angle at which line joining the observation point to the source charge makes with the side, degrees
r = (d/2)/cosd(theta);....// Distance of observation point from the charges, m
//since,1/4*%pi*%eps = 9e+009;
V = (q1+q2+q3)*(9e+009)/r;.....// Elecric potential, V
printf("\nThe electric potential at the point equidistant from the three corners of the triangle = %4.1f V", V); 

// Result
// The electric potential at the point equidistant from the three corners of the triangle = 93.5 V 



