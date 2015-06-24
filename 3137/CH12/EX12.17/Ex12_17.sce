//Initilization of variables
theta=%pi/3 //rad
//Calculations
//Method (a)
t=sqrt(theta) //s
r=2*theta
rdot=4*t
thetadot=2*t
//Velocity calculations
x=r*thetadot
v=sqrt((rdot)^2+x^2) //ft/s
//Theta calculations
thetax=30+atand(rdot/x) //degrees
//Method (b)
x=2*theta*cos(theta) //ft
y=2*theta*sin(theta) //ft
xdot=4*t*((cos(t^2)))+2*t^2*(-sin(t^2))*(2*t) //ft/s
ydot=4*t^2*sin(t^2)+2*t^2*cos(t^2)*2*t //ft/s
v=sqrt(xdot^2+ydot^2) //ft/s
thetax=atand(ydot/-xdot) //degrees
//Result
clc
printf('By both the methods we obtain v=%f ft/s and thetax as %f degrees',v,thetax) 
