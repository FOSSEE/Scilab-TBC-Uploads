//Initilization of variables
t=1 //s
r=4 //m
//Calculations
s=t^3+3 //m
theta=s/r //rad
dtheta_dt=0.75*t^2 //rad/s
Vx=-4*sin(theta)*dtheta_dt //m/s
Vy=4*cos(theta)*dtheta_dt //m/s
V=sqrt(Vx^2+Vy^2) //m/s
//Result
clc
printf('The components of  velocity are Vx=%fm/s ,Vy=%fm/s and V=%fm/s',Vx,Vy,V)
