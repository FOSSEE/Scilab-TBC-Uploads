//Etample 8.5

clc
clear

function [f] = fun1(t,y)
    f = t+y;
endfunction

function [f] = rk4(t,y)
    k1 = h*fun1(t,y);
    k2 = h*fun1(t+1/2*h,y+1/2*k1);
    k3 = h*fun1(t+1/2*h,y+1/2*k2);
    k4 = h*fun1(t+h,y+k1);
    f = y + 1/6*(k1+2*k2+2*k3+k4);
endfunction

t0 = 0;
y0 = 1;
h = 0.1;
t = 0.4;
n = (t-t0)/h;

for i = 1:n
    y = rk4(t0,y0);
    t0 = t0 + h;
    y0 = y;
    y = round(y*10^5)/10^5;
end

disp(y,"y(0.4) = ")
