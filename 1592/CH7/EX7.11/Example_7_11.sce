//Scilab Code for Example 7.11 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
clear x y n;
x=[0,0,2,0,0];
y=[0,0,1,1,0];
n=-2:2;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d2(n,x,2);
title('x(t)')
xlabel('t')
figure(1);
n=-2:2;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d2(n,y,5);
title('y(t)')
xlabel('t')
z=conv(x,y);
figure(2);
n=-3:5;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot(n,z,2);
title('Convoluted signal     z(t)')
xlabel('t')
