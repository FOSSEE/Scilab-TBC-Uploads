
//y=mx+b
clear; 
clc;
close;
clf;
x=linspace(0,3,4);
y=x;
plot2d(x,y,1);
y=x+2;
plot2d(x,y,4);
y=x-3;
plot2d(x,y,5);
xtitle("Equations of the form y=mx+b","x axis","y axis");
legend("y=x","y=x+2","y=x-3",2);
disp('y=mx+b');
//m is constant, b is fixed distance. (x,y) vary for different points on the line 
xgrid()
