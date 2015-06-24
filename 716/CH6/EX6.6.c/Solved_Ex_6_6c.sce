//Determine power of given signal x=u(n)
clc;
clear;
n=-200:1:200;
x=1.*(n>=0);
plot2d3(n,x,3);
xsq=abs(x).^2;
n1=length(n);
disp('watts',sum(xsq)/n1,'Power=');