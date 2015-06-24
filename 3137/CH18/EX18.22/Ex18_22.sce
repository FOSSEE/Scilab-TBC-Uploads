//Initilization of variables
theta=30 //degrees
vo=20 //ft/s
r=4 //ft
vf=0 //ft/s
g=32.2 //ft/s^2
//Calculations
wo=vo/r //rad/s
wf=vf/r //rad/s
//Applying impulse momentum theorem
//Solving simultaneous equations
t=-((3/(2*g))*(r^2)*(wf-wo))/(r*sind(theta))//s
//Result
clc
printf('The time t is %f s',t)
