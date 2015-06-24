//Initilization of variables
theta=10 //degrees
v=10 //ft/s
v0=0 //ft/s
u=1/3 //coefficient of friction
g=32.2 //ft/s^2
//Calculations
//Equations of motion for box are
//Simplfying the equations by sybstitution
a=((u*cosd(theta))-sind(theta))*g //ft/s^2
//Time calculations
t=(v-v0)/a //s
//Result
clc
printf('The value of a is %fft/s^2\n The time required is %f seconds',a,t)
