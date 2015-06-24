
clear
 clc
//to find time required by the car to come to rest.
//to find the distance travelled by car before stopping.


// GIVEN::

//mass of car
m = 1260//in kg
//velocity of car
v0x = 29.2//in m/s
//rate at which breaking force increases with time
c = 3360//in N/s

// SOLUTION:
//assuming car's velocity is in +ve x direction
//applying newton's second law of motion
//applying kinematic equation of motion to derive velocity relation and distance travelled relation
//time required by the car to come to rest
t1 = sqrt((2*v0x*m)/c)//in seconds
//distance travelled by car before stopping
//here we are taking time is t1 and x0 is 0
x(t1) = 0 + (v0x*t1)-((c*(t1^3))/(6*m))//in meters
printf ("\n\n Time required by the car to come to rest t1 = \n\n %.2f seconds",t1);
printf ("\n\n Distance travelled by car before stopping x(t1) = \n\n %.1f m",x(t1));
