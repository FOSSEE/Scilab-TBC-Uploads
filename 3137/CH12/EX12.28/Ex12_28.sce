//Initilization of variables
w0=0 //rad/s
alpha=10.5 //rad/s^2
t=0.6 //s
r=0.6 //m
//Calculations
w=w0+alpha*t //rad/s
v=r*w //m/s
a_t=r*alpha //m/s^2
a_n=r*w*w //m/s^2
a=sqrt(a_t^2+a_n^2) //m/s^2
phi=atand(a_t/a_n) //degrees
//result
clc
printf('The tangential velocity is %fm/s\n',v)
printf('the acceleration is %fm/s^2 and angle is %f degrees',a,phi)
