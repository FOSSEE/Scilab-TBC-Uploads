//Determine power of given signal x=cos(pi*n/3)
clc;
clear;
n=-25:1:25;
x=(cos(%pi/3.*n));
plot2d3(n,x,3);
xsq=abs(x).^2;
n1=length(n);
disp('watts',sum(xsq)/n1,'Power=');