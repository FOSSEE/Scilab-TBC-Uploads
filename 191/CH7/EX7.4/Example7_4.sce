//Illustraion of Taylor Series for approximation
//It needs symbolic toolbox
clc;
clear;
close();
cd ~/Desktop/maxima_symbolic;
exec symbolic.sce
y0 = 1;
x0 = 0;
y1_0 = -y0^2/(1+x0);
y2_0 = (2*y0^3+y0^2)/((1+x0)^2);
y3_0 = -(6*y0^4 + 6*y0^3 + 2*y0^2)/((1+x0)^3);
//similarly
y4_0 = 88;
y5_0 = -694;
y6_0 = 6578;
y7_0 = -72792;
syms r h;
format('v',10);
yxr = 1 - r*h + (y2_0*(r*h)^2)/factorial(2) - (y3_0*(r*h)^3)/factorial(3) + (y4_0*(r*h)^4)/factorial(4) - (y5_0*(r*h)^5)/factorial(5) +(y6_0*(r*h)^6)/factorial(6) - (y7_0*(r*h)^7)/factorial(7);
yxr_5d = 1 - r*h + (y2_0*(r*h)^2)/factorial(2) + (y3_0*(r*h)^3)/factorial(3) + (y4_0*(r*h)^4)/factorial(4);
h = 0.05;
r = 1;
yx1 = eval(yxr_5d);
format('v',8);
disp(dbl(yx1), 'Value when r = 1 :');

syms r h;
format('v',10);
yxr = 1 - r*h + (y2_0*(r*h)^2)/factorial(2) - (y3_0*(r*h)^3)/factorial(3) + (y4_0*(r*h)^4)/factorial(4) - (y5_0*(r*h)^5)/factorial(5) +(y6_0*(r*h)^6)/factorial(6) - (y7_0*(r*h)^7)/factorial(7);
yxr_5d = 1 - r*h + (y2_0*(r*h)^2)/factorial(2) + (y3_0*(r*h)^3)/factorial(3) + (y4_0*(r*h)^4)/factorial(4) + (y5_0*(r*h)^5)/factorial(5) ;
h = 0.05;
r = 2;
yx1 = eval(yxr_5d);
format('v',8);
disp(dbl(yx1), 'Value when r = 2 :')