
//example 3.5
//page 127
clc; funcprot(0);
// Initialization of Variable
x=2;
y=4;
pi=3.14;
u=4*x;//velocity x
v=-4*y;//velocity y
V=sqroot(u^2+v^2);
theta=180/pi*atan(v/u);
disp(V,"velocity at (2,4)is (m/s)=");
disp(theta,"angle of the velocity with X axis(degrees)=");
clear
