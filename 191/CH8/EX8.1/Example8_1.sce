//The finite difference method 
clc;
clear;
close();
format('v',7);
funcprot(0);
disp('Integral 0 to 2 exp(x)dx');
deff('[pp]=p(x)','pp=x');
deff('[qq]=q(x)','qq=-3');
deff('[rr]=r(x)','rr=exp(x)');
y0 = 1;
yn = 2;
x = [.2 .4 .6 .8 1];
h = 0.2;
A = [-2-h^2*q(x(1)) 1-h*p(x(1))/2 0 0;1+h*p(x(2))/2 -2-h^2*q(x(2)) 1-h*p(x(2))/2 0;0 1+h*p(x(3))/2 -2-h^2*q(x(3)) 1-h*p(x(3))/2;0 0 1+h*p(x(4))/2 -2-h^2*q(x(4))];
disp(A,'A');
c = [h^2*r(x(1))-(1+h*p(x(1))/2)*y0;h^2*r(x(2));h^2*r(x(3));h^2*r(x(4))-(1-h*p(x(4))/2)*yn];
Y = inv(A)*c;
disp(Y','The respective values of y1,y2,y3,y4 : ');