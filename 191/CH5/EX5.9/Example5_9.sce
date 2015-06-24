//Hermite cubic Interpolation 
clc;
clear;
close();
format('v',9);
funcprot(0);

x0 = -2;x1 = 0;x2 = 1;
y0 = 3;y1 = 1;y2 = -2;
y0d = -1;y1d = 0;y1d = 1;
h0 = 2;
h1 = 1;

deff('[H3_0]=H30(x)','H3_0=y0*((x-x1)^2/h0^2+2*(x-x0)*(x-x1)^2/h0^3)+y1*((x-x0)^2/h0^2-2*(x-x1)*(x-x0)^2/h0^3)+y0d*(x-x0)*(x-x1)^2/h0^2+y1d*((x-x1)*(x-x0)^2)/h0^2');
deff('[H3_1]=H31(x)','H3_1=y1*((x-x2)^2/h1^2+2*(x-x1)*(x-x2)^2/h1^3)+y2*((x-x1)^2/h1^2-2*(x-x2)*(x-x1)^2/h1^3)+y1d*(x-x1)*(x-x2)^2/h1^2+y2d*((x-x2)*(x-x1)^2)/h1^2');

disp ('H(x) = x^3/4+x^2+1      on  -2<=x<=0');
disp ('       7*x^3-10*x^2+1   on   0<=x<=1');