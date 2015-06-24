// Scilab Code Ex1.11: Page-14 (2008)
clc; clear;
v1 = 20;    // Velocity of first piece, m/s
v2 = 30;    // Velocity of second piece, m/s
// From conservation of momentum, in x-direction 
// m*v1*cosd(0)+m*v2*cosd(45)+m*v3*cosd(theta) = 0, solving for v3*cosd(theta)
v3_cos_theta = -(v1*cosd(0)+v2*cosd(45));    // x-component of v3 along theta, m/s
// From conservation of momentum, in y-direction 
// m*v1*sind(0)-m*v2*sind(45)+m*v3*sind(theta) = 0, solving for v3*sind(theta)
v3_sin_theta = -(v1*sind(0)-v2*sind(45));    // y-component of v3 along theta, m/s
theta = atand(v3_sin_theta/v3_cos_theta);    // Direction of velocity of third piece, degree
v3 = -(v1*cosd(0)+v2*cosd(45))/cosd(theta+180);    // Velocity of third piece, m/s
printf("\nThe velocity of third piece is %4.1f m/s towards %d degree north of west", v3, ceil(theta+180));

// Result 
// The velocity of third piece is 46.4 m/s towards 153 degree north of west 
