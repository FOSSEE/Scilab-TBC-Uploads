//Initilization of variables
rho=490 //lb/ft^3
t=0.02 //in
d=4 //in
r=d/2 //in
g=32.2 //ft/s^2
//Calculations
W=(%pi*r^2*t*rho)/1728 //lb
//Mass
m=W/g //slugs
//Momemt of inertia
I=(1/4)*m*(r/12)^2 //slug-ft^2
//Result
clc
printf('the moment of inertia is %fslug-ft^2',I)
