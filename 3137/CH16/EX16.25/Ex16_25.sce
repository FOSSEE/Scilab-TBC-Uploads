//Initilization of variables
W=50 //lb
P=10 //lb
t=5 //s
vo=0 //ft/s
g=32.2 //ft/s^2
//Calculations
//Using equations of motion
ax=(P*g)/W //ft/s^2
//Solving by matrix method for A and B
F=[1,1;-4,4]
Q=[W;P]
R=inv(F)*Q
//Velocity calculations
v=vo+ax*t //ft/s
A=R(1) //lb
B=R(2) //lb
//Result
clc
printf('The velocity of the door after 5s is %f ft/s and A=%f lb and B=%f lb',v,A,B)
