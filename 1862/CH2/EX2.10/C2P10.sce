    
clear
 clc
//to find time required to reach highest point
//to find distance travelled by the ball till the highest position is reached
//to find time at which ball will be 27m above the groung

// GIVEN::

//initial speed of the ball
v0y = 25.2//in m/s
//final speed of the ball
vy = 0//in m/s
//acceleration due to gravity
g = 9.8//in m/s^2
//for calculating time distance of ball above the ground
y1 = 27.0//in meters



// SOLUTION:
//time required to reach highest psition
//applying kinematic equations
t = (v0y-vy)/g//in seconds
//distance travelled by the ball till the highest position is reached
//applying kinematic equations
y = (v0y*t)-(1/2*g*t^2)//in meters
//time at which ball will be 27m above the groung
//solving quadratic equation
y1 = poly([y1 -(v0y) (1/2*g)],'t','coeff')
c = roots(y1)
t1 = c(1)
t2 = c(2)
//velocity of ball at t1
vy1 = v0y-(g*t1)//in m/s
//velocity of ball at t2
vy2 = v0y-(g*t2)//in m/s

printf ("\n\n Time required to reach highest psition t =\n\n %.2f s",t);
printf ("\n\n Distance travelled by the ball till the highest position is reached y =\n\n %.1f m",y);
printf ("\n\n Time at which ball will be 27m above the groung t1 =\n\n %.2f s",t1);
printf ("\n\n Time at which ball will be 27m above the groung t2 =\n\n %.2f s",t2);
printf ("\n\n Velocity of ball at t1 =\n\n %.1f m/s",vy1);
printf ("\n\n Velocity of ball at t2 =\n\n %.1f m/s",vy2);
