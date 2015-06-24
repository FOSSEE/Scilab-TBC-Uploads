
clear
 clc
//to find speed of ball

// GIVEN:
//refer to problem 9-10
//mass of disk
M = 2.5//in kg
//distance of fall
y = 0.56//in meters
//mass of block
m = 1.2//in kg
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:
//applying conservation of mechanocal energy principle
//speed of block
v = sqrt((4*m*g*y)/(M+2*m))//in m/s 
printf ("\n\n Speed of ball v = \n\n %.1f m/s",v)
