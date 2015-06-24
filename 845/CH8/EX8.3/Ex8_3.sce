//Example 8.3

clc
clear

function [f] = dydt(t,y)
    f = t + sqrt(y);
endfunction

y0 = 1;
t0 = 0;
h = 0.2;
t = 0.6;
n = (t-t0)/h;

tt = t0;

for i = 1:n
    y11 = y0 + h*dydt(tt,y0);
    t1 = tt + h;
    y1 = y0 + h/2*(dydt(tt,y0) + dydt(t1,y11));
    y1 = round(y1*10^4)/10^4;

    y(i) = y1;
    y0 = y1;
    tt = t1;
end
mprintf("%5s %8s",'t','y')
disp([(t0+h:h:t)' y])
