// Scilab Code Ex1.10: : Page-14 (2008)
clc; clear;
m1 = 1200;    // Mass of the car, kg
m2 = 3600;    // Mass of the truck, kg
u1 = 30;    // Speed of the car, m/s
u2 = 20;    // Speed of the truck, m/s
theta = 60;    // Direction of motion of the truck w.r.t. that of car, degree
// As m1*u1 + m2*u2 = (m1 + m2)*v, solving for v along x and y directions
v_x = (m1*u1 + m2*u2*cosd(theta))/(m1 + m2);    // Common speed along x-direction, m/s
u1 = 0;    // The speed of the car after interlocking with the truck, m/s
v_y = (m1*u1 + m2*u2*sind(theta))/(m1 + m2);    // Common speed along y-direction, m/s
v = sqrt(v_x^2 + v_y^2);    // Common speed of the car-truck system, m/s
theta = atand(v_y/v_x);    // Direction of common velocity w.r.t. that of car, degree
printf("\nThe common speed of the car-truck system = %4.1f m/s", v);
printf("\nThe direction of common velocity = %4.1f degree north of east", theta);

// Result 
// The common speed of the car-truck system = 19.8 m/s
