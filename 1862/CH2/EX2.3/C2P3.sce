
clear
 clc
//to find magnitude and direction of resultant of a and b and c vector

// GIVEN::

//coefficient in x direction for vector a 
ax = 4.3
//coefficient in y direction for vector a 
ay = -1.7
//coefficient in x direction for vector b 
bx = -2.9
//coefficient in y direction for vector b 
by = 2.2
//coefficient in x direction for vector c 
cx = 0
//coefficient in y direction for vector c
cy = -3.6
//we can write a,b and c in vector form
a = [4.3 -1.7]
b = [-2.9 2.2]
c = [0 -3.6]

// SOLUTION:

//coefficient in x direction for resultant vector 
sx = ax + bx + cx
//coefficient in y direction for resultant vector 
sy = ay + by + cy
//direction of resultant vector
fi = atand(sy/sx)+360
printf ("\n\n Coefficient of resultant vector in x direction sx = \n\n %.1f",sx);
printf ("\n\n Coefficient of resultant vector in y direction sy =\n\n %.1f",sy);
printf ("\n\n Resultant vector s =\n\n %.1fi + %.1fj',sx,sy);
printf ("\n\n Direction of resultant vector with positive x axis measured counterclockwise fi =\n\n %3i degrees",fi);
