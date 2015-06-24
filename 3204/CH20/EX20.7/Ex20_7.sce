// Initilization of variables
theta=30 // degree // angle at which the bullet is fired
s=-50 // position of target below hill
v=100 // m/s // velocity at which the bullet if fired
g=9.81 // m/s^2 
// Calculations
v_x=v*cosd(theta) // m/s // Initial velocity in horizontal direction
v_y=v*sind(theta) // m/s // Initial velocity in vertical direction
// (a) Max height attained by the bullet
h=v_y^2/(2*g) // m
// (b)Let the vertical Velocity with which the bullet will hit the target be V_y. Then,
V_y=sqrt((2*-9.81*s)+(v_y)^2) // m/s // the value of V_y is +ve & -ve
// Let V be the velocity with wich it hits the target
V=sqrt((v_x)^2+(V_y)^2) // m/s
// (c) The time required to hit the target
a=g // m/s^2
t=(v_y-(-V_y))/a // seconds
// Results
clc
printf('(a) The maximum height to which the bullet will rise above the soldier is %f m \n',h)
printf('(b) The velocity with which the bullet will hit the target is %f m/s \n',V)
printf('(c) The time required to hit the target is %f seconds \n',t)
