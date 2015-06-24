
//y=x^2-4*x+3.values of x where y>0
clear;
clc;
close;
x=poly(0,'x');
y=x^2-4*x+3;
x=roots(y)
//for y>0, the values of x where y is above x axis are  x<1 or x>3
x=linspace(-2,6,9);
y=x^2-4*x+3;
plot2d(x,y,3);
xtitle("Using graphs to solve quadratic inequalities","x axis","y axis");
legend("y=x^2-4*x+3");
xgrid();
