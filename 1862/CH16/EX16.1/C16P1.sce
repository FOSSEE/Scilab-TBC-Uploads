clear
clc
//to find volume flow rate of water

// GIVEN:
//refer to figure 16-5 on page no. 354
//cross sectional area
A1 = 1.2//in cm^2
//cross sectional area
A2 = 0.35//in cm^2
//vertical distance between two levels
h = 45//in mm
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:
//applying equation of continuity and conservation of energy between two levels
//speed of water at level 1
v1 = sqrt((2*g*(h*10^-3)*(A2^2))/(A1^2-A2^2))//in m/s //taking h in meters
//volume flow rate
V1 = v1*100//in speed v1 in cm/s 
R = A1*V1//in cm^2/s

printf ("\n\n Speed of water at level 1 v1 = \n\n %.3f m/s",v1)
printf ("\n\n Volume flow rate R = \n\n %2i cm^3/s",R)
