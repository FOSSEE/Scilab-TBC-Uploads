//Initilization of variables
t=2 //s
//Calculations
Vx=20*t+5 //m/s
Vy=t^2-20 //m/s
//As indefinite integral is not possible 
x=10*t^2+5*t+5 //m
y=0.5*t^2-20*t-15 //m
ax=20 //m/s^2
ay=2*t //m/s^2
//Result
clc
printf('The displacement components are x=%fm,y=%fm\n The velocity components are Vx=%fm/s,Vy=%fm/s\n The acceleration components are ax=%fm/s^2 and ay=%fm/s^2',x,y,Vx,Vy,ax,ay)
