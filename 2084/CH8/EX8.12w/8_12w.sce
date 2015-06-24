//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.12w
//calculation of the maximum compression of the spring

//given data
k=400//spring constant(in N/m)
m=40*10^-3//mass(in kg)
h=4.9//height(in m)
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//m*g*h = (k*x*x/2)
x=sqrt((2*m*g*h)/k)

printf('the maximum compression of the spring is %3.3f m or %3.1f cm',x,x*10^2)
