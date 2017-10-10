clear all; clc;
disp("Ex 11_3")
//At required equilibrium position, theta =45 degrees
////From virtual displacements
//From virtual - work equation
theta=45*%pi/180
a=1
b=-1.2*cos(theta)
c=-0.13
d=(b^2)-(4*a*c)
e=2*a
xc1=(-b+sqrt(d))/e
xc2=(-b-sqrt(d))/e
printf('\n\n The first value of xc = %0.3f m',xc1)
printf('\n\n The second value of xc = %0.3f m \n\n',xc2)
disp("Considering the positive value only")
disp("xc = 0.981 m")
//put xc in equation 4
Cx=(-120*cos(theta)*((1.2*cos(theta))-(2*xc1)))/(1.2*sin(theta)*xc1)
printf('\n\n Cx = %0.0f N',Cx)
