//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.8w
//calculation of the distance from launching point

//given data
u=100//speed(in m/s) of the projectile
theta=37//angle(in degree) of the projectile above horizontal
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
xcm=(2*u*u*sind(theta)*cosd(theta))/g//range of original projectile
//also   xcm=((m1*x1)+(m2*x2))/(m1+m2)
//here m1=M/4   and    m2=3*M/4 
x1=xcm/2//since small part falls from heighest point i.e half of range
x2=(4/3)*((xcm*((1/4)+(3/4)))-(x1/4))

printf('the distance of landing of heavier piece from launching point is %d m',x2)
