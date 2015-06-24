
//y=x^2-5*x+5
clear;
clc;
clf;
close;
x=linspace(-2,7,10);
y=x^2-5*x+5;
plot2d(x,y,3);
plot2d3(x,y,7);
x=poly(0,'x');
y=x^2-5*x+5;
x=roots(y)
for x=0:5
  for y=5:20
    plot(x,y,'r.pentagram');    //y>0 region
 end
end 
xtitle("Using quadratic inequalities to describe regions","x axis","y axis");
xgrid();
legend("y=x^2-5*x+5","y<x^2-5*x+5 region","y>x^2-5*x+5 region",4);
