//clear//
//Example 4.9:Continuous Time Fourier Transform Properties: 
//Linearity and Time Shift Property
clear;
clc;
close;
// CTFT
t1 = -1/2:0.1:1/2;
t2 = -3/2:0.1:3/2;
x1 = ones(1,length(t1));
x2 = ones(1,length(t2));
t3 = t1+2.5;
t4 = t2+2.5;
x1 = (1/2)*x1;
x = [x2(1:floor(length(x2)/3)),x1+x2(ceil(length(x2)/3):$-floor(length(x2)/3)),x2(($-ceil(length(x2)/3))+2:$)];
subplot(3,1,1)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t1,x1)
xtitle('x1(t)')
subplot(3,1,2)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t2,x2)
xtitle('x2(t)')
subplot(3,1,3)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t4,x)
xtitle('x(t)')
