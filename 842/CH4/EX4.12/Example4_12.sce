//clear//
//Example 4.12:Continuous Time Fourier Transform: 
//Derivative property
clear;
clc;
close;
// CTFT
t = -1:0.1:1;
x1 = ones(1,length(t));
x2 = [-1,zeros(1,length(t)-2),-1];
x = t;
//differentiation of x can be expressed as
//summation of x1 and x2
subplot(3,1,1)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t,x1)
xtitle('x1(t)')
subplot(3,1,2)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',t,x2)
xtitle('x2(t)')
subplot(3,1,3)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t,x)
xtitle('x(t)')
