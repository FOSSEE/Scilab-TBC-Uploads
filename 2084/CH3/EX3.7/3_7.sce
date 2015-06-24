//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.7
//calculation of maximum height reached by the ball

//given data
u=4; //initial velocity(in m/s) of the ball
a=-10; //acceleration(in m/s^2) of the ball

//calculation
y=-((u*u)/(2*a)); //formula for vertical height(in m)

disp(y,'maximum height(in m) reached by the ball is');
