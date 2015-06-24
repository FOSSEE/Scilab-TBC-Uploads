//Initilization of variables
m=30 //kg
k=0.45 //m
g=9.8 //m/s^2
//Using equations of motion
//Solving for T1,T2 and alpha
A=[1,0,-m;0,-1,-45;-0.6,0.3,-m*k^2]
B=[50*g;-150*g;0]
C=inv(A)*B
//Result
clc
printf('The values are T1=%f N T2=%f N and alpha=%f rad/s^2 ',C(1),C(2),C(3))
