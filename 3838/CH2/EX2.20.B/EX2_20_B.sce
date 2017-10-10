//EXAMPLE 2.20.B
clc;
x1=100;
x=integrate('exp(-2*t)*exp(-5*t)','t',0,x1);
disp(x);
disp('valid for t>=0');
