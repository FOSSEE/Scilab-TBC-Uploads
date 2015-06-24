
clear
 clc
//maximum distance travelled by the rocket above the water surface 


// GIVEN::

//distance below the water surface 
//this can be written as y-y0 = s =125
s = 125//in meters
//initial velocity of rocket
v0y = 0//in m/s
//acceleration due to gravity
g = 9.8//in m/s^2
//time required to reach the water surface
t = 2.15//in seconds
//velocity of rocket at highest position
v2 = 0//in m/s^2

// SOLUTION:
//acceleration of rocket in upward direction
//applying kinematic equations
ay = (2*s)/t^2//in m/s^2
//final velocity of the rocket at the surface of water
//applying kinematic equations
vy = v0y+(ay*t)//in m/s
//now taking v3 as initial velocity of rocketi.e. velocity at the water surface level
//so, at highest rocket will have 0 velocity which we will take as final velocity of rocket
//time required to reach highest position from water surface
//applying kinematic equations
time = (vy-v0y)/g//in seconds
//maximum distance travelled by the rocket above the water surface 
//applying kinematic equations
y = (vy*time)-(0.5*g*time^2)//in meters 
time = nearfloat("pred",11.8)
y = nearfloat("pred",688)
printf ("\n\n Acceleration of rocket in upward direction ay = \n\n %.1f m/s^2",ay);
printf ("\n\n Final velocity of the rocket at the surface of water vy = \n\n %3i m/s",vy);
printf ("\n\n Time required to reach highest position from water surface time = \n\n %.1f seconds",time);
printf ("\n\n Maximum distance travelled by the rocket above the water surface y = \n\n %2i m",y);
