// Ex1_2: Page:10 (2014)
clc; clear;
c = 1;  // For simplicity assume speed of light to be unity, m/s
v = 0.6*c;  // Speed of first rocket w.r.t. the earth, m/s
u_prime = 0.9*c;    // Speed of second rocket w.r.t. the first, m/s
// Case 1: Firing in the same direction as that of the first
u = (u_prime + v)/(1 + u_prime*v/c^2);  // Speed of 2nd rocket w.r.t. earth from Velocity Addition Rule
printf("\nThe speed of second rocket w.r.t. earth fired in the same direction = %5.3fc", u);
// Case 2: Firing in the opposite direction as that of the first
u = (-u_prime + v)/(1 - u_prime*v/c^2);  // Speed of 2nd rocket w.r.t. earth from Velocity Addition Rule
printf("\nThe speed of second rocket w.r.t. earth fired in the opposite direction = %5.3fc", u);

// Result
// The speed of second rocket w.r.t. earth fired in the same direction = 0.974c
// The speed of second rocket w.r.t. earth fired in the opposite direction = -0.652c 
