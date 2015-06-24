//Example 8.2

clc
clear

function [f] = dydt(t,y)
    f = (y-t) / (y+t);
endfunction

y0 = 1;
t0 = 0;
t = 0.1;
n = 5;
h = (t-t0)/n;

tt = t0;
y = y0;
for i = 1:n
    y = y +h*dydt(tt,y);
    y = round(y*10^4)/10^4;
    tt = tt + h;
end
disp(y,"y(t = 0.1) = ")
