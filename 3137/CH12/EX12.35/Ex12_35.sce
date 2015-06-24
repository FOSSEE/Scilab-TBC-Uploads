//Initilization of variables
t=1 //s
theta=1 //rad
//Calculations
dtheta_dt=0.75*t^2 //rad/s
acc=1.5*t //rad/s^2
ax=-4*cos(theta)*dtheta_dt^2-(4*sin(theta)*acc) //m/s^2 (to left)
ay=-4*sin(theta)*dtheta_dt^2+(4*cos(theta)*acc) //m/s^2 (up)
a=sqrt(ax^2+ay^2) //m/s^2
//result
clc
printf('The acceleration is %fm/s^2',a)
