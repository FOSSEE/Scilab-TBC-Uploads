clear all
clc
close

qm=10*1e-6;//q/m ratio in C/kg
E=8*1e5;//Electric field in V/m
g=9.8;//Universal gravitational constant

y=-1;//in meters
t=sqrt(-2*y/g);

//Calculation of separation distance between particles
x=(qm*E*t^2)/2;
printf('Distance of separation between particles in %f m',2*x)
