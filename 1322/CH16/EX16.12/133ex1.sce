
clear; 
clc;
close;
clf;
x=linspace(-5,4,10);
y=12-x-x^2;
plot2d(x,y,5);
xtitle("Graph of y=12-x-x^2 ","x axis","y axis");
x=poly(0,'x');
y=12-x-x^2;
//"at these points  curve cuts the axis of x"
x=roots(y)
x=-1/2;
y=12-x-x^2; //highest point
y=[0 2 4 6 8 10 y];
plot(x,y,'b--.pentagram');
legend("y=12-x-x^2","axis of symmetry");
//line from highest point to the x axis is the axis of symmetry
xgrid();
