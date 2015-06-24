
clear
 clc
//to find tension in the string and normal force exerted on the block by the plane
//to analyse the motion when the string is cut

// GIVEN::
//refer to problem 5.7 from page no. 95 
//mass of first block
m1 = 9.5//in kg
//angle of inclination of plane
theta = 34//in degrees
//mass of second block
m2 = 2.6//in kg
//acceleration due to gravity
g = 9.81//in m/s^2
//coefficient of static friction
mew_s = 0.24
//coefficient of kinetic friction
mew_k = 0.15



// SOLUTION:
//T is tension in the spring and N is normal reaction force by surface.
//refer to the free body diagrams 5-17a from page no. 99

//for mass m1 and m2
//assuming m1 moves in positive x direction
//equating forces in x direction and applying newton's second law of motion 
//equating forces in y direction and applying newton's second law of motion 
//acceleration of blocks
a = (m2-(m1*(sind(theta)- (mew_k*cosd(theta)))))*g/(m1 + m2)//in m/s^2
//if ans. for a is -ve then our assumption is wrong i.e. m1 is moving in -ve x direction but magnitude of ans is correct
//tension in the string
T = (((m1*m2*g)*(1 + sind(theta) - (mew_k*cosd(theta))))/(m1 + m2))//in N
T = round(T)

printf ("\n\n Acceleration of blocks a = \n\n %.1f m/s^2",a);
printf ("\n\n Tension in the string T = \n\n %2i N",T);
