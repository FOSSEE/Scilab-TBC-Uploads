
clear
 clc
//to find tension in the string and normal force exerted on the block by the plane
//to analyse the motion when the string is cut

// GIVEN::
//refer to figure 5-7(a) on page no. 92
//mass of block
m = 18//in kg
//angle of inclination of plane
theta = 27//in degrees
//acceleration due to gravity
g = 9.81//in m/s^2


// SOLUTION:

//refer to the figure 5-8a from page no. 93
//considering free body diagram 5-8b from page no.93.

//whenthe block is stationary on the plane
//equating forces in x direction
//applying newton's second law of motion
//tension in the string
T = m*g*sind(theta)//in N
//equating forces in y direction
//applying newton's second law of motion
//normal reaction by the surface
N = m*g*cosd(theta)//in N

//when the string is cut
//equating forces in x direction
//applying newton's second law of motion
//acceleration of block in x direction ax 
ax = -(g*sind(theta))//in m/s^2
//-ve sign indicates acceleration acting in -ve x direction i.e. downwards
printf ("\n\n Tension in the string T = \n\n %2i N",T);
printf ("\n\n Normal force exerted on the block by the plane N = \n\n %3i N",N);
printf ("\n\n Acceleration of block in x direction when the string is cut ax  = \n\n %.2f m/s^2",ax);
