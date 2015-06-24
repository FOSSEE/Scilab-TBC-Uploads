clc;
clear;
function y=fx(x)
    y=-(2*sin(x)-x^2/10)
endfunction
x=fminsearch(fx,0)
disp("After maximization:")
disp(x,"x=")
disp(fx(x),"f(x)=")
