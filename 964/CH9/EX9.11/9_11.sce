clc;
clear;
a=[70 1 0;60 -1 1;40 0 -1];
b=[636;518;307];
x=abs(linsolve(a,b));
disp("m/s^2",x(1,1),"a=")
disp("N",x(2,1),"T=")
disp("N",x(3,1),"R=")
