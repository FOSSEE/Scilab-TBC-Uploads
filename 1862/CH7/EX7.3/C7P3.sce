


 clc
//to find location of second fragment

// GIVEN::

//refer to figure 7-11 fron page no. 145
//consider +ve x direction as our reference axis
//mass of projectile
M = 9.6//in kg
//initial velocity of projectile
v0 = 12.4//in m/s
//angle of projectile above horizontal
fi0 = 54//in degrees
//mass of first piece after explosion
m1 = 6.5//in kg
//time after which first piece id observed
t = 1.42//in seconds
//vertical distance at which first piece is observed
y1 = 5.9//in meters
//horizontal distance at which first piece is observed
x1 = 13.6//in meters
//acceleration due to gravity
g = 9.80//in m/s^2

// SOLUTION:

//refer to figure 7-11 from page no. 145
//mass of second piece
//by mass conservation
m2 = M-m1//in kg
//velocity of projectile in +ve x direction
v0x = v0*cosd(fi0)//in m/s
//velocity of projectile in +ve y direction
v0y = v0*sind(fi0)//in m/s
//using kinematic equation of motion
//x coordinate of position of original projectile
x = v0x*t//in m
//y coordinate of position of original projectile
y = (v0y*t)-(0.5*g*t^2)//in m
//applying center of mass formula
//x coordinate of posion of second piece
x2 = (M*x - m1*x1)/m2//in meters
//y coordinate of posion of second piece
y2 = (M*y - m1*y1)/m2//in meters
x = nearfloat("succ",10.4)
y = nearfloat("pred",4.3)
x2 = nearfloat("succ",3.7)
y2 = nearfloat("pred",0.9)

printf ("\n\n x coordinate of position of original projectile x = \n\n %.1f m",x);
printf ("\n\n y coordinate of position of original projectile y = \n\n %.1f m",y);
printf ("\n\n x coordinate of posion of second piece x2 = \n\n %.1f m",x2);
printf ("\n\n y coordinate of posion of second piece y2 = \n\n %.1f m",y2);
