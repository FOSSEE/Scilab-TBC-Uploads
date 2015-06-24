
clear
 clc
//to find work done

// GIVEN::

//refer to figure 11-8(a) from page no. 232
//mass of block
m = 11.7//in kg
//distance by which block is pushed on inclined plane
s = 4.65//in meters
//height by which block is raised
h = 2.86//in meters
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 11-8(b) from page no. 232
//from diagram sin(theta) can be calculated as
sin_theta = (h/s)
//angle between applied force and displacement of block
fi = 0//in degrees
//using newton's second law of motion
//force pushing the block 
F = m*g*sin_theta//in N
//work done by force F
W = F*s*cosd(fi)//in J
//work done by raising block vertically
Work = m*g*h//in J
W = round(W)
Work = round(Work)
printf ("\n\n Force pushing the block F = \n\n %.1f N",F);
printf ("\n\n Work done by force F W = \n\n %3i J",W);
printf ("\n\n Work done by raising block vertically \n\n Work = \n\n %3i J",Work);
