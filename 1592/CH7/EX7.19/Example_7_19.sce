//Scilab Code for Example 7.19 of Signals and systems by
//P.Ramakrishna Rao
//Convolution of two signals
clc;
clear;
clear x y n;
x=[2,-1,1,0,2];
y=[1,0,-1,2];
n=-1:3;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3(n,x,-5);
title('x(k)')
xlabel('k')
figure(1);
n=0:3;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3(n,y,-5);
title('y(k)')
xlabel('k')
z=conv(x,y);
figure(2);
n=-1:6;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3(n,z,-5);
title('Convoluted signal     z(t)')
xlabel('t')
