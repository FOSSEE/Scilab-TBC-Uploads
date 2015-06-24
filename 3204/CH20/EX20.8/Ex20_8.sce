// Initilization of variables
W=30 // N // Weight of the hammer
theta=30 // degree // ref fig.20.12
mu=0.18 // coefficient of friction
s=10 // m // distance travelled by the hammer // fig 20.12
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The acceleration of the hammer is given as,
a=g*((sind(theta))-(mu*cosd(theta))) // m/s^2
// The velocity of the hammer at point B is,
v=sqrt(2*a*s) // m/s
// Let the initial velocity of the hammer in horizontal direction be v_x & v_y in vertical direction, Then,
v_x=v*cosd(theta) // m/s
v_y=v*sind(theta) // m/s
// MOTION IN VERTICAL DIRECTION
// Now, let time required to travel vertical distance (i.e BB'=S=5 m) is given by finding the roots of the second degree eq'n as,
// From the eq'n 4.9*t^2+4.1*t-5=0,
a=4.9
b=4.1
c=-5
// The roots of the eq'n are,
t=((-b)+(sqrt(b^2-(4*a*c))))/(2*a)
// MOTION IN HORIZONTAL DIRECTION
// Let the horizotal distance travelled by the hammer in time t be s_x.Then,
s_x=v_x*cosd(theta)*t // m
x=1+s_x // m
// Results
clc
printf('The distance x where the hammer hits the round is %f m \n',x)
