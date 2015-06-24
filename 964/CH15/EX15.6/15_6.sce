clc;
clear;
function f=fx(x)
    f=-(2*x(1)*x(2)+2*x(1)-x(1)^2-2*x(2)^2)
endfunction
x=fminsearch(fx,[-1 1])
disp("After maximization:")
disp(x,"x=")
disp(fx(x),"f(x)=")
