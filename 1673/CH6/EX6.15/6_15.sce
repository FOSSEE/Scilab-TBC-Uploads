//euler's maclaurin formula
//example 6.15
//page 233
clc;clear;close;
y=[0 1 0];
h=%pi/4;
I=h*(y(1)+2*y(2)+y(3))/2+(h^2)/12+(h^4)/720;
printf(' the value of integrand with h=%f is : %f\n\n',h,I)
h=%pi/8;
y=[0 sin(%pi/8) sin(%pi*2/8) sin(%pi*3/8) sin(%pi*4/8)]
I=h*(y(1)+2*y(2)+2*y(3)+2*y(4)+y(5))/2+(h^2)/2+(h^2)/12+(h^4)/720;
printf(' the value of integrand with h=%f is : %f',h,I)