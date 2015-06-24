clear all; clc;
disp("Ex 19_2")
a=100 //weight of disk in N
m=100/9.81 // mass of disk in kg
r=0.3 //radius of the disk in m
I_A=0.5*m*r^2
printf('\n\nMoment of inertia of the disk about its fixed axis of rotation is = %0.3f kgm^2',I_A)
//Principle of Impulse Momentumyields the following 3 equations
//0+A_x*(2)=0 ... equation 1
//0+A_y*(2)-100*(2)-40*(2)=0 .. equation 2
//0+4*(2)+[40*(2)]*(0.3)=0.459*w_2
//Solving these equations yields :
disp("A_x is = 0")
disp("A_y is = 140 N")
disp("w_2 is = 69.7 rad/sec in clockwise direction")
