//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.2
//calculation of the work done by force of gravity

//given data
m=20*10^-3//mass(in kg) of the particle
u=10//speed(in m/s) of the particle
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//from equation of motion.....(v*v)=(u*u)-(2*g*h)......take v=0 we get
h=(u*u)/(2*g)
W=-m*g*h//law of conservation of energy

printf('the work done by force by gravity is %3.1f J',W)
