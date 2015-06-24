
//x(2x-y)-x(x-y)-y(x+2y)
clear;
clc;
close;
disp("1)after simplifying")
val=string('x^2-x*y-2*y^2')
disp("2)after substituting given values")
x=2;y=1;
val=evstr(val)
