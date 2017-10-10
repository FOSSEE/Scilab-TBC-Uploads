//ex_6.5.b even and odd signals of x(n)
clear;
clc;
close;
n= 0:0.01:5;
x=2*exp(%i*((%pi)/3)*n);
figure
a=gca();
xtitle('x(n)')
plot2d(n,x)
figure
a=gca();
xtitle('even signal')
plot2d(n,x/2)
t1=-5:1/100:0;
plot2d(t1,x($:-1:1)/2)
a.y_location='origin'
figure
a=gca();
xtitle('odd signal')
plot2d(n,x/2)
t1=-5:1/100:0;
plot2d(t1,-x($:-1:1)/2)
a.y_location='origin'
a.x_location='origin'
