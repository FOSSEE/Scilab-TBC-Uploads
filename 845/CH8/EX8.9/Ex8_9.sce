//Example 8.9

clc
clear

function [f] = fun1(t,y)
    f = y - t^2;
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
t = 1;
h = 0.2;
n = (t-t0)/h;
y = y0;

for i = 2:4
    y(i) = rk4(t0,y0);
    t0 = t0 + h;
    y0 = y(i);
end

t0 = 0;
dydt(1) = fun1(t0,y(1));
dydt(2) = fun1(t0+h,y(2));
dydt(3) = fun1(t0+2*h,y(3));
dydt(4) = fun1(t0+3*h,y(4));

for i = 1:n-3
    yP = y(4) + h/24*(55*dydt(4)-59*dydt(3)+37*dydt(2)-9*dydt(1));
    dydt(5) = fun1(t0+(3+i)*h,yP);
    yC = y(4) + h/24*(9*dydt(5)+19*dydt(4)-5*dydt(3)+dydt(2));
    y = [y(2:4); yC];
    dydt = [dydt(2:4); fun1(t0+(3+i)*h,yC)]
end
disp(yC,"Computed Solution: y(1.0) = ")

function [f] = true(t)
    f = t^2 + 2*t +2 - exp(t);
endfunction
ytrue = true(1.0);
ytrue = round(ytrue*10^4)/10^4;
disp(ytrue,"Analytical Solution: y(1.0) = ")
