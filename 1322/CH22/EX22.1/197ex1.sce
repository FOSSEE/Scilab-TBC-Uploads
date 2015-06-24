
//y=a*x^2+b
clear;
clc;
close;
clf;
x=[0 0.5 1 1.5 2 2.5];
y=[-10 -9.25 -7 -3.25 2 8.75];
plot2d(x^2,y,3);
xtitle("Graph of y=ax^2+b","x axis","y axis");
xgrid;
//the values of a & b can be found by substituting two suitable points(x,y)in a*x^2+b-y=0
x=1;y=-7;//p1=-a+b+7 
x=4;y=2;//p2=4*a+b-2
a=poly(0,'a');
p=-a+7-(4*a-2);
a=roots(p);
x=1;y=-7;
b=y-a*x^2;
x=poly(0,'x');
//(or) by inspection of graph, intercept on y-axis is (i.e., b) is -10 and a,the gradient of the line,is 3
mprintf("\n Hence, the law is\n")
x=poly(0,'x');
y=3*x^2-10
mprintf("or by solving by the method of Section 185")
y=a*x^2+b
