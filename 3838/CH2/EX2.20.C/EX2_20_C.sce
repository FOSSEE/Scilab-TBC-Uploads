//EXAMPLE 2.20.C
clc;
x1=100;
x=integrate('t*exp(-5*t)','t',0,x1);
disp(x);
disp('valid for t>=0');
