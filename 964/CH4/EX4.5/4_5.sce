clc;
clear;
function y=f(x)
    y=x^3
endfunction
x=2.5;
delta=0.01;
deltafx=abs(derivative(f,x))*delta;
fx=f(x);
disp(fx+deltafx,"and",fx-deltafx,"true value is between")