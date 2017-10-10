//EXAMPLE 2.21.B
clc;
x1=10;
x=integrate('exp((-5)*t)','t',0,x1);
disp(x)
disp('valid for t>=0')
