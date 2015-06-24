//Initilization of variables
d=0.1 //m
v=20 //m/s
a_g=6 //m/s^2
d2=0.150 //m
//Calculations
r=d/2 //m
w=v/r //rad/s
vb=d2*0.5*w //m/s
alpha=a_g/r //rad/s^2
a_t=d2*0.5*alpha //rad/s^2 tangential acceleration
a_n=d2*0.5*w*w //m/s^2 normal acceleration
a=sqrt(a_t^2+a_n^2) //m/s^2 linear acceleration
//Result
clc
printf('The linear velocity is %fm/s and the acceleration is %fm/s^2',vb,a)
