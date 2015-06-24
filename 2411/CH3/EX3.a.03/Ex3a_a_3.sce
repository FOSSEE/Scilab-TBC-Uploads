// Scilab Code Ex3a.a.3:Page-133 (2008)
clc; clear;
v1 = 80;    // Velocity of the body at 3 cm displacement, cm/s
v2 = 60;    // Velocity of the body at 4 cm displacement, cm/s
x1 = 3;    // Displacement of the body at velocity of 80 cm/s
x2 = 4;    // Displacement of the body at velocity of 60 cm/s
// As v = omega*sqrt(a^2 - x^2), solving for a
a = poly(0, 'a');
a = roots(v1^2*(a^2-16) - v2^2*(a^2 - 9));
omega = v1/sqrt(a(1)^2 - x1^2);    // Angular ferquency of the oscillations, rad/s
x = a(1);    // Maximum displacement, cm
// As x = a*sin(omega*t), solving for t
t_ex = asin(x/a(1))/omega;    // Time taken to reach the +ve extremity, s
d = a(1) - 2.5;    // Distance of the point from the mean position, cm
t = asin(d/a(1))/omega;    // Time taken to travel from mean position to positive extremity, s
printf("\nThe time taken to travel from 2.5 cm from +ve extremity = %5.3f s", t_ex - t);    

// Result
// The time taken to travel from 2.5 cm from +ve extremity = 0.052 s 