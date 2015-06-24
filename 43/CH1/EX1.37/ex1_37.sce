//Ex 1.37
//shifting and scaling discrete signals
clear ;
clc;
close;
t=-4:5;
x=[0 -1 -.5 .5 1 1 1 -1 -.5 0]
a=gca();
subplot(3,1,1),plot2d3(t,x)
subplot(3,1,1),plot(t,x,'r.')
xtitle('x[n]')
a.x_location='origin';
a.y_location='origin';

t1=-5:4;
t2=t1+2;
a=gca();
subplot(3,1,2),plot2d3(t2,x($:-1:1))
subplot(3,1,2),plot(t2,x($:-1:1),'r.')
xtitle('x[-n+2]')

a=gca()
subplot(3,1,3),plot2d3(ceil(t/3),x)
subplot(3,1,3),plot(ceil(t/3),x,'r.')
xtitle('x[3n]')
a.x_location='origin';
a.y_location='origin';
