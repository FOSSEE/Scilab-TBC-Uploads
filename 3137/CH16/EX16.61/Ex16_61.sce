//Initilization of variables
r=15/12 //ft
W=600 //lb
theta=25 //degrees
//calculations
ax=(r*W*sind(theta))/((1/r)*14.5+r*18.6) //ft/s^2
F=(W*sind(theta))-18.6*9.09 //lb
//Result
clc
printf('The solution is F=%f lb and ax=%f ft/s^2',F,ax)
