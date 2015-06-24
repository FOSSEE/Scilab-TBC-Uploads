//Initilization of variables
W=10 //lb
theta=30 //degrees
l=2 //ft
w=10 //rev/min
g=32.2 //ft/s^2
//Calculations
r=l*cosd(theta) //ft
a_n=r*(((w*2*%pi)/60)^2) //ft/s^2
//Applying Newtons Principle
//Solving by matrix method
A=[cosd(theta),-sind(theta);sind(theta),cosd(theta)] 
B=[(W*a_n)/g;W] 
C=inv(A)*B //lb
//Result
clc
printf('The value of T is %flb',C(1)) 
