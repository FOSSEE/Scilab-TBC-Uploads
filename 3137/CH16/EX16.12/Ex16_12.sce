//Initilization of variables
W=644 //lb
F=30 //lb
theta=30 //degrees
r=1.5 //ft
g=32.2 //ft/s^2
//Calculations
//Using equations of motion
//Solving by matrix method
A=[1,-W/g;-r,-(1/2)*(W/g)*(2*2)*(1/r)]
B=[W*sind(theta)-F*cosd(theta);-F*2]
C=inv(A)*B
a=C(2) //ft/s^2
//Result
clc
printf('The value of a is %f ft/s^2',a)
