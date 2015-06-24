//Example 8.1

clc
clear

function [f] = dydt(t,y)
    f = t+y;
endfunction

y0 = 0;
t0 = 1;
t = 1.2;
h = 0.1;

n = (t-t0)/h;
tt = t0;
y = y0;
den = [1 2 6 24 120];
for i = 1:n
    d2ydt = 1 + dydt(tt,y);
    d3ydt = d2ydt;
    d4ydt = d3ydt;
    d5ydt = d4ydt;
    dy = [dydt(tt,y) d2ydt d3ydt d4ydt d5ydt];
    tt = tt + h;
    for j = 1:length(dy)
        y = y + dy(j)*(tt-t0)^j/den(j);
    end
    t0 = tt;
end
disp(y,"y(1.2) = ")

function [f] = closed(t)
    f = -t -1 + 2*exp(t-1);
endfunction
yclosed = closed(1.2);
yclosed = round(yclosed*10^4)/10^4;
disp(yclosed,"y_closed form = ")
disp("Comparing the results obtained numerically and in closed form, we observe ")
disp("that they agree up to four decimals")
