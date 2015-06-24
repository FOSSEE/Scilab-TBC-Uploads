//Initilization of variables
l=200 //lb
//Calculations
P=l*5/12 //lb
//Solving as system of linear equations
A=[0 -36 0 0;0 0 0 36;0 0 1 1;1 1 0 0]
B=[-P*cosd(25)*48;l*20+P*sind(25)*48;P*sind(25)+200;P*cosd(25)]
C=inv(A)*B
//Result
clc
printf('The forces are Az=%flb Bz=%flb Ay=%flb By=%flb',C(1),C(2),C(3),C(4))
