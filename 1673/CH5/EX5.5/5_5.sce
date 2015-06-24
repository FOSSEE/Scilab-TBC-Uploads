//cubic spline
//example 5.5
//page 191
clc;clear;close;
x=[1 2 3];
y=[6 18 42];
m0=40;
m1=(3*(y(3)-y(1))-m0)/4;
X=poly(0,'X');
s1=m0*((x(2)-X)^2)*(X-x(1))-m1*((X-x(1))^2)*(x(2)-X)+y(1)*((x(2)-X)^2)*[2*(X-x(1))+1]+y(2)*((X-x(1))^2)*[2*(x(2)-X)+1];
disp(s1,'s1=');
