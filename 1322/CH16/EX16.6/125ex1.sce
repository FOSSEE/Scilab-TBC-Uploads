
//y=ax^2
clear; 
clc;
close;
clf;
x=linspace(-3,3,11);
y=2*x^2;
plot2d(x,y,3);
y=x^2;
plot2d(x,y,4);
y=x^2/2;
plot2d(x,y,5);
legend("y=2*x^2","y=x^2","y=x^2/2");
xtitle("The curves of y=ax^2","x axis","y axis");
//if a is negative, we get corresponding curves similar to y=-x^2
xgrid();
