//ex_4 combining two discrete signals
clear;
clc;
close;
t1=-2:7
t2=-3:4
x1=[0 0 0 1 2 3 0 0 2 2 0];
x2=[0 -2 -2 2 2 0 -2 0 0 0 0];
t3=min(t1(1),t2(1)):max(t1(length(t1)),t2(length(t2)));
figure
a=gca();
plot2d3(t3,x1)
plot(t3,x1,'r.')
xtitle('x1[n]')
figure
a=gca();
plot2d3(t3,x2)
plot(t3,x2,'r.')
xtitle('x2[n]')
a.x_location='middle'
figure
a=gca();
plot2d3(t3,x1+x2)
plot(t3,x1+x2,'r.')
xtitle('y1[n]=x1[n]+x2[n]')
a.x_location='origin'
figure
a=gca();
plot2d3(t3,2.*x1)
plot(t3,2.*x1,'r.')
xtitle('y2[n]=2 * x1[n]')
figure
a=gca();
plot2d3(t3,x1.*x2)
plot(t3,x1.*x2,'r.')
xtitle('y2[n]=x2[n] * x1[n]')