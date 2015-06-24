//Initilization of variables
t=2 //s
//Calculations
//Velocity
vx=8*t-3 //ft/s
vy=3*t^2 //ft/s
v=sqrt(vx^2+vy^2) //ft/s
theta_x=atand(vy/vx) //degrees
//Acceleration
ax=8 //ft/s^2
ay=6*t //ft/s^2
a=sqrt(ax^2+ay^2) //ft/s^2
phi_x=atand(ay/ax) //degrees
//Result
clc
printf('The velocity is %fft/s and angle is %fdegrees\n The acceleration is %fft/s^2 and angle it makes is %fdegrees',v,theta_x,a,phi_x)
