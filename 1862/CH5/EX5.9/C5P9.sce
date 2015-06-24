
clear
 clc
//to find shortest distance in which automobile can stop


// GIVEN::
//refer to figure 5-16 on page no. 99
//initial velocity of automobile in mi/h
v01 = 60//in mi/h
//coefficient of static friction
mew_s = 0.60 
//acceleration of gravity
g = 9.81//in m/s^2

// SOLUTION:
//N is normal reaction force by surface.
//refer to the free body diagrams 5-16b from page no. 95

//initial velocity of automobile in m/s
v0 = v01*(1609/3600)//in m/s
//applying newton's law in x and y direction
//applying kinematic equation of motion
//shortest distance in which automobile can stop
d = ((v0^2)/(2*mew_s*g))//in meters
d = ceil(d)
printf ("\n\n Shortest distance in which automobile can stop d  = \n\n %2i m",d);
