//Determine energy of given signal x=((1/4)^n)*u(n)
clc;
clear;
n=-100:1:100;
x=((1/4).^n).*(n>=0);
plot2d3(n,x,3);
xsq=abs(x).^2;
disp('Joules',sum(xsq),'Energy=');