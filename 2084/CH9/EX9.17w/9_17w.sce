//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.17w
//calculation of the speed of the bullet

//given data
mb=50*10^-3//mass(in kg) of the bullet
mp=450*10^-3//mass(in kg) of the bob
h=1.8//height(in m) attained by the bob
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//using principle of conservation of linear momentum  and equation of motion (v*v) = (u*u) + (2*a*x)
v=((mb+mp)*(sqrt(h*2*g)))/mb

printf('the speed of the bullet is %d m/s',v)
