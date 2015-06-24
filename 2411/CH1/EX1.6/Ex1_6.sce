// Scilab Code Ex1.6: Page-12 (2008)
clc; clear;
v = 1;    // Let the speed of the ball B be unity, unit
v_prime = v/2;    // Speed of the ball after the collision, unit
theta = atand(v_prime/v);    // The direction of motion of the ball A after collision, degree
printf("\nThe direction of motion of the ball after collision = %2.0f degree", theta);

// Result 
// The direction of motion of the ball after collision = 27 degree 