//Initilization of variables
theta=40 //degrees
x=100 //ft
ay=32.2 //ft/s^2
//Calculations
//Simplfying the equation
t=sqrt((tand(theta)*x)/(ay/2)) //s
//Velocity calculations
Vo=100/(cosd(theta)*t) //ft/s
//Result
clc
printf('The initial speed should be %f ft/s',Vo)
