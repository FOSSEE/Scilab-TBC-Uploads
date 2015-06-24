// Initilization of variables
m=600 // kg // mass of the roller
r=0.25 // m // radius of the roller
P=850 // N // Force
v=3 // m/s // velocity to be acquired
theta=30 // degree // angle made by v with the force P
// Calculations
// The distance required to be rolled is given by equating the Work done between positions 1 & 2 as,
x=((3/4)*m*v^2)/(P*cosd(theta)) // m
// Results
clc
printf('The distance required to be rolled is %f m \n',x)
