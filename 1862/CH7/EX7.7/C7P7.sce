
clear
clc
//to find speed of block after it has absorbed eight bullets

// GIVEN::
//refer to figure 7-16 fron page no. 148
//mass of bullet
m1 = 3.8//n gram
m = 3.8*10^-3//in kg
//speed of bullet
v = 1100//in m/s
//mass of wooden block
M = 12//in kg
//number of bulletes
N = 8

// SOLUTION:
//refer to figure 7-16 from page no. 148
//consider +ve x direction to the right as seen in fig. 7-16
//applying momentum conservation before bullets are stillin flight and after bullets are in the block
//speed of block after it has absorbed eight bullets
V = ((N*m)/(M + N*m))*v//in m/s 
printf ("\n\n Speed of block after it has absorbed eight bullets V = \n\n %.1f m/s",V);
