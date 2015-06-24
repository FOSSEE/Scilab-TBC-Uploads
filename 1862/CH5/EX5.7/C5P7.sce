

 clc
//to find tension in the string 
//to find acceleration of blocks

// GIVEN::
//refer to figure 5-11(a) on page no. 95
//mass of first block
m1 = 9.5//in kg
//angle of inclination of plane
theta = 34//in degrees
//mass of second block
m2 = 2.6//in kg
//acceleration due to gravity
g = 9.81//in m/s^2


// SOLUTION:

//refer to the free body diagrams 5-11b and 5-11c from page no. 95


//for mass m1
//assuming m1 moves in positive x direction
//equating forces in x direction and applying newton's second law of motion 
//equating forces in y direction and applying newton's second law of motion

//for mass m2
//equating forces in y direction and applying newton's second law of motion
//solving above equations simultaneously using matrix form
//acceleration of blocks
a = (m2-(m1*sind(theta)))*g/(m1 + m2)//in m/s^2
//if ans. for a is -ve then our assumption is wrong i.e. m1 is moving in -ve x direction but magnitude of ans is correct
//tension in the string
T = ((m1*m2*g)*(1 + sind(theta)))/(m1 + m2)//in N

printf ("\n\n Acceleration of blocks a = \n\n %.1f m/s^2",a);
printf ("\n\n Tension in the string T = \n\n %2i N",T);
