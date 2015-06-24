//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.2w
//calculation of the value of angle of banking

//given data
r=600//radius(in m) of the track
v=180*10^3/(60*60)//speed(in m/s) of the car
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//for vertical direction
//N*cosd(theta) = M*g.........................(1)
//for horizontal direction 
//N*sind(theta) = M*v*v/r.....................(2)
//from above equations,we get
theta=atand((v*v)/(r*g))

printf('the value of angle of banking is %3.2f degree',theta)
