//Initilization of variables
W=161 //lb
F=16.1 //lb
r=18 //ft radius
t=2 //s
g=32.2 //ft/s^2
wo=0 //rad/s
//Calculations
//Using equations of motion
//Solving for T and alpha
A=[r/12,-0.5*(W/g)*(r/12)^2;-1,-F/g]
B=[0;-F]
C=inv(A)*B
alpha=C(2) //rad/s^2
w=wo+alpha*t //rad/s
//Result
clc
printf('The angular speed is %f rad/s',w)
//The decimal accuray causes the discrepancy
