clc
clear
//Initialization of variables
r=2.5 //in
mf=160 //cfm
rho=1/14
mu=0.0000121
v=14 //ft^3/lbm
g=32.2 //ft/s^2
z=100 //ft
//calculations
A=3.14*(r/12)^2
V=mf/A /60
Re=(2*r/12)*V*rho/mu
disp("From fig 12.4,")
f=0.0225/4
dp=4*f*(rho)*(V/v)^2 /(2*g*(2*r/12)) *z
//dp=2.32
//results
printf("Pressure drop = %.2f lbf/ft^2 100 ft",dp)
disp("The answer in the textbook is wrong. Please use a calculator to verify it.")
