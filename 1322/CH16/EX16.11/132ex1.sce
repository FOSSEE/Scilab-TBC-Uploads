
clear; 
clc;
close;
clf;
x=linspace(-3,5,9);
y=2*x^2-3*x-5;
plot2d(x,y,5);
xtitle("Graph of y=2*x^2-3*x-5","x axis","y axis");
x=poly(0,'x');
y=2*x^2-3*x-5;
//"at these points  curve cuts the axis of x"
x=roots(y)
x=3/4;
y=2*x^2-3*x-5;  //highest point
y=[0 -2 -4 y];
plot(x,y,'b--.+');
legend("y=2*x^2-3*x-5","axis of symmetry");
disp("NOTE:line from lowest point to the x axis is the axis of symmetry");
xgrid();
