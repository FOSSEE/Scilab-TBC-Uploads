clear all; clc;
disp("Ex 11_5")
//Using the equation for equilibrium position,
theta=asin(0)
printf('\n\n Theta = %0.0f degrees',theta)
m=10//mass in kg
W=10*9.81//weight of the mass in N
k=200//spring constant in N/m
l=0.6//m
theta1=acos(1-(W/(2*k*l)))//in radian
theta2=theta1*180/%pi
printf('\n\n Theta = %0.1f degrees',theta2)
//Stability: Determining the second derivative of V w.r.t theta at theta=0 and theta=53.8 degrees
//let a=d^2V/d(theta)^2 at theta=0
//let b=d^2V/d(theta)^2 at theta=53.8
a=((k*l^2)*(cos(theta)-cos(2*theta)))-(((W*l)/2)*cos(theta))
printf('\n\n Second derivative of V w.r.t theta at theta = 0 degrees is %0.1f',a)
disp("Unstable equilibrium at theta=0 degrees")
b=((k*l^2)*(cos(theta1)-cos(2*theta1)))-(((W*l)/2)*cos(theta1))
printf('\n\n Second derivative of V w.r.t theta at theta = 53.8 degrees is %0.1f',b)
disp("Stable equilibrium at theta=53.8 degrees")
