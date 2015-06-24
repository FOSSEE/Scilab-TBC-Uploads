//Initilizatin of variables
W=6 //lb
l=8 //ft
v=10 //ft/s
g=32.2 //ft/s^2
theta1=60 //degrees
theta2=30 //degrees
//Calculations
Fe=(W*v^2)/(g*l*0.5) //lb
//Using equations of motion
//Solving for C and T
A=[cosd(theta1),-cosd(theta2);cosd(theta2),cosd(theta1)]
B=[-Fe;W]
P=inv(A)*B //lb
C=P(1) //lb
T=P(2) //lb
//Result
clc
printf('The value of C is %f lb and T is %f lb',C,T)

