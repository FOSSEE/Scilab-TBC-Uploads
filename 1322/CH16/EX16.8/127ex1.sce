
//y=x^2+a or y=x^2-a
clear; 
clc;
close;
clf;
x=linspace(-3,3,11);
y=x^2;
plot2d(x,y,3);
plot(y=1)
legend("y=x^2");
xtitle("Change of axis","x axis","y axis");
xgrid();
mprintf("axis for y=x^2 becomes axis for y=x^2-3 by drawing new x axis 3 units above the original")
