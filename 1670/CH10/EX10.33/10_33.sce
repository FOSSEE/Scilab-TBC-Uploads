//Example 10.33
//Numerov Method
//Page no. 350
clc;clear;close;
k=0.5;h=%pi/6
y(1)=0;y(2)=k;
deff('y=f2(x,y)','y=-y')
deff('y=g()','y=-1')
fi=acos(((2+5*h^2*g()/6)-(1-h^2*g()/12)*y(1))/(2*(1-h^2*g()/12)))
y6=k*(sin(6*fi)/sin(fi))
disp(y6,"y6 = ")