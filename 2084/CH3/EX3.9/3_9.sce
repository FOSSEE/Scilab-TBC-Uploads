//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.9
//calculation of horizontal range of the projectile

//given data
u=12//initial velocity(in m/s) of the projectile
theta=45//angle(in degree) made by the projectile with X axis
g=10//gravitational acceleration(in m/s^2)

//calculation
h=(u*u*sind(2*theta))/g;//formula for horizontal range of a projectile

printf('the ball hits the field at %f m from the point of projection',h);
