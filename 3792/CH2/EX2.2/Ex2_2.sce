// Example 2_2
clc;funcprot(0);
// Given data
v_x=50;// The initial velocity in ft/sec
a_x=-10;// The acceleration in ft/sec^2
t_0=8;// s
t_1=12;// s

// Calculation
// v_x=90-10t; ft/sec
v_x0=(90-(10*t_0));// The velocity in ft/sec
v_x1=(90-(10*t_1));// The velocity in ft/sec
// x=-5t^2+90t-80; ft
x_0=(-5*t_0^2)+(90*t_0)-80;// ft
x_1=(-5*t_1^2)+(90*t_1)-80;// ft
// The maximum positive x-coordinate is,then, the value of x for t=9 sec which is
t=9;// sec
x_max=(-5*t^2)+(90*t)-80;// ft
printf("\nThe velocity of the particle for the conditions of t=8 sec and t=12 sec,v_x=%2.0f ft/sec & v_x=%2.0f ft/sec \nThe x-coordinate of the particle for the conditions of t=8 sec and t=12 sec, x=%3.0f ft & x=%3.0f ft \nThe maximum positive x-coordinate reached by the particle,x_max=%3.0f ft",v_x0,v_x1,x_0,x_1,x_max)
