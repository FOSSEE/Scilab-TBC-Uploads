// Initilization of variables
h=2000 // m/ height of the plane
v=540*(1000/3600) // m/s // velocity of the plane
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Time t required to travel down a height 2000 m is given by eq'n,
u=0 // m/s // initial velocity
t=sqrt((2*h)/(g)) // seconds
// Now let s be the horizonta distance travelled by the bomb in time t seconds, then
s=v*t // m
// angle is given as theta,
theta=atand(h/s) // degree
// Results
clc
printf('The pilot should release the bomb from a distance of %f m \n',s)
printf('The angle at which the target would appear is %f degree \n',theta)
