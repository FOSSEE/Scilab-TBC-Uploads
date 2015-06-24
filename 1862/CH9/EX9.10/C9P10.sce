
clear
 clc
//to find acceleration of the falling block
//to find tension in the chord
//to find angular acceleration of the disk


// GIVEN::

//refer to figure 9-26(a) from page no. 192
//mass of disk
M = 2.5//in kg
//radius of disk
R = 20//in cm
//mass of block
m = 1.2//in kg
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 9-26(b) from page no. 192
//applying newton's second law in y direction for block
//and applying rotational form of newton's second law for disk
//we get 2 equations and 2 unknowns
A = [m 1;(1/2*M) -1]
B = [(m*g);0]
c = A\B
//acceleration of block
a = c(1)//in m/s^2
//tension in the string
T = c(2)//in N
//angular acceleration of disk
az = a/(R*10^-2)//in rad/s^2
a_z = az/(2*%pi)//in rev/s^2

printf ("\n\n Acceleration of block a = \n\n %.1f m/s^2",a);
printf ("\n\n Tension in the string T = \n\n %.1f N",T);
printf ("\n\n Angular acceleration of disk az in rad/s^2 = \n\n %.1f rad/s^2",az);
printf ("\n\n Angular acceleration of disk a_z in rev/s^2 = \n\n %.1f rev/s^2",a_z);

