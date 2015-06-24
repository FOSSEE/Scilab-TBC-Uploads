clear
clc
//to find applied force
//to find distance by which car is raised

// GIVEN:
//refer to figure 15-9 from page no. 338
//diameter of smaller piston
Di = 2.2//in cm
//combined mass
M = 1980//in Kg
//diameter of larger piston
D0 = 16.4//in cm
//length of pump handle
L = 36//in cm
//distance of pivot to the piston
x = 9.4//in cm
//acceleration due to gravity
g = 9.8//in m/s^2
//vertical distance by which hand moves
h = 28//in cm

// SOLUTION:
//area of larger piston
A0 = %pi*(D0/2)^2//in cm^2
//area of smaller piston
Ai = %pi*(Di/2)^2//in cm^2
//applied force to the smaller piston
Fi = M*g*(Ai/A0)//in N
//using Newton's third law of motion
//applied force at the end of pump handle
Fh = Fi*(x/L)//in N
//distance moved by smaller piston
di = h*(x/L)//in cm
//equating pressure on each side
//distance moved by larger piston and car is raised by
d0 = di*(Ai/A0)//in cm

printf ("\n\n Applied force to the smaller piston Fi = \n\n %3i N",Fi)
printf ("\n\n Applied force at the end of pump handle Fh = \n\n %2i N",Fh)
printf ("\n\n Distance moved by smaller piston di = \n\n %.1f cm",di)
printf ("\n\n Distance moved by larger piston and car is raised by d0 = \n\n %.2f cm",d0)
