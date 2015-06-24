clear
clc
//To find magnitude of torque due to gravity about the pivot point o

// GIVEN::

//refer to figure 9-5 from page no. 178
//mass of body 
m = 0.17//in kg
//length of rod
L = 1.25//in meters
//angle of pendulum with vertical
theta = 10//in degrees
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//magnitude of torque
tow = L*m*g*sind(theta)//in N.m

printf ("\n\n Magnitude of torque tow = \n\n %.2f N.m" ,tow);
