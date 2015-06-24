//ex_35 to check if a system is linear or non-linear
clear;
clc;
close;
x1=2;
x2=3;
y1=x1*x1;
y2=x2*x2;
y=y1+y2;
z=(x1+x2)*(x1+x2);
if z==y then
    disp('the system  is linear')
else
    disp("the system is nonlinear")
end