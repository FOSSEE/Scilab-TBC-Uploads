//ex_2.3.b even and odd signals of x(t)
clear;
clc;
close;
t = 0:0.01:5;
x=3+(2*t)+5*((t)^2)
figure
a=gca();
xtitle('x(t)')
plot2d(t,x)
figure
a=gca();
xtitle('even signal')
plot2d(t,x/2)
t1=-5:1/100:0;
plot2d(t1,x($:-1:1)/2)
a.y_location='origin'
figure
a=gca();
xtitle('odd signal')
plot2d(t,x/2)
t1=-5:1/100:0;
plot2d(t1,-x($:-1:1)/2)
a.y_location='origin'
a.x_location='origin'
