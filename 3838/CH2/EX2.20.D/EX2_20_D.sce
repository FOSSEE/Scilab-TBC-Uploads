//EXAMPLE 2.20.D
clc;
x1=100;
x=integrate('t*cos(t)','t',0,x1);
disp(x);
disp('valid for t>=0');
