//Initilization of variables
m=4 //lb
v=6 //ft/s
r=2 //ft
theta1=40 //degrees
theta2=20 //degrees
g=32.2 //ft/s^2
//Calculations
a_n=v^2/r //ft/s^2
//Applying Newtons Principle
Fi=(m*a_n)/g //lb
//Solving by matrix method
A=[cosd(theta1),cosd(theta2);sind(theta1),-sind(theta2)]
B=[m;Fi] 
C=inv(A)*B //lb
//Result
clc
printf('The value of T and C are %flb and %flb respectively',C(1),C(2)) 
