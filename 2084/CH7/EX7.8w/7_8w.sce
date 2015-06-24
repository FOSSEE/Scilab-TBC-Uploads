//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.8w
//calculation of the angular speed of rotation

//given data
L=20*10^-2//length(in m) of the rod = length(in m)of the string
theta=30//angle(in degree) made by the string with the vertical
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//applying Newton's second law
//T*sind(theta) = m*w*w*L*(1+sind(theta)).............(1)
//applying Newton's first law in vertical direction
//T*cosd(theta) = m*g.................................(2)
//from above equations,we get
//tand(theta)=((w*w*L*(1+sind(theta)))/g).............(3)
w=sqrt((g*tand(theta))/(L*(1+sind(theta))))

printf('the angular speed of rotation is %3.1f rad/s',w)

