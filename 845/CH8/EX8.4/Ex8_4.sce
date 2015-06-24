//Example 8.4

clc
clear

function [f] = fun1(x,y)
    f = (y+x) / (y-x);
endfunction

function [f] = rk2(x,y)
    k1 = h*fun1(x,y);
    k2 = h*fun1(x+3/2*h,y+3/2*k1);
    f = y + 1/3*(2*k1+k2);
endfunction

x0 = 0;
y0 = 1;
h = 0.2;
x = 0.4;
n = (x-x0)/h;

for i = 1:n
    y = rk2(x0,y0);
    x0 = x0 + h;
    y0 = y;
    y = round(y*10^5)/10^5;
end

disp(y,"y(0.4) = ")
