//Scilab Code for Example 7.22 of Signals and systems by
//P.Ramakrishna Rao
//Convolution of two signals
clc;
clear;
clear x y n;
for n=0:10;
    x(n+1)=(3/4)^n*u(n);
end
c = gca();
c.y_location = "origin";
c.x_location = "origin";
n=0:10;
plot2d3(n,x,-4);
title('x(n)')
xlabel('n')
for n=0:10;
    y(n+1)=u(n);
end
figure(1);
n=0:10;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3(n,y,-4);
title('y(k)')
xlabel('k')
z=conv(x,y);
figure(2);
n=0:20;
c = gca();
c.y_location = "origin";
c.x_location = "origin";
plot2d3(n,z,-4);
title('Convoluted signal     w(t)');
xlabel('t');
disp(z(1),'z(0)',z(4),'z(3)',z(6),'z(5)',z(11),'z(10)');
