
//y=x^2+a or y=x^2-a
clear; 
clc;
close;
clf;
x=linspace(-3,3,11);
y=x^2+2;
plot2d(x,y,3);
y=x^2;
plot2d(x,y,4);
y=x^2-3;
plot2d(x,y,5);
legend("y=x^2+2","y=x^2","y=x^2-3");
xtitle("Curves of y=x^2 +/- a","x axis","y axis");
xgrid();
