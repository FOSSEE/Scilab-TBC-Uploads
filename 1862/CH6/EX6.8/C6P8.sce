


 clc
//to find final speed and direction of second puck after collision

// GIVEN::
//refer to diagram 6-15 from page no. 128

//we consider +ve x direction as initial motion of first puck
//mass of first puck
//assume mass of first puck be 1kg
m1 = 1//in kg
//mass of second puck
//mass of second puck is 1.5 times mass of first puck 
m2 = 1.5//in kg
//initial velocity of first puck in +ve x direction
v1ix = 2.48//in m/s
//initial velocity of second puck in +ve x direction
v2ix = 1.86//in m/s
//initial direction of second puck away from the direction of first puck
theta1 = 40//in degrees
//final velocity of first puck after collision
v1fx = 1.59//in m/s
//final direction of first puck after collision
theta2 = 50//in degrees

// SOLUTION:

//applying law of conservation of momentum in x and y direction
//solving equation
//final direction of second puck after collision
theta = atand(0.38/2.40)//in degrees
//final speed  of second puck after collision
v2f = 2.40/cosd(theta)//in m/s
printf ("\n\n Final speed  of second puck after collision v2f = \n\n %.2f m/s",v2f);
printf ("\n\n Final direction of second puck after collision theta = \n\n %.1f degrees",theta);
