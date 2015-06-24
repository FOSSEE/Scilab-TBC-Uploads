//Initilization of variables
vo=9 //m/s
theta=30 //degrees
g=9.8 //m/s^2
//Calculations
x=((7/10)*vo^2)/(g*sind(theta)) //m
//Result
clc
printf('The ball will roll %f m up the plane',x)
//The textbook wrongly mentions the unit of displacement as in 
