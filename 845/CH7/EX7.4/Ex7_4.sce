//Example 7.4

clc
clear

x = [0.15 0.21 0.23 0.27 0.32 0.35];
y = [0.1761 0.3222 0.3617 0.4314 0.5051 0.5441];

n = length(x);
del = %nan*ones(n,6);
del(:,1) = y';
for j = 2:6
    for i = 1:n-j+1
        del(i,j) = (del(i+1,j-1) - del(i,j-1)) / (x(i+j-1)-x(i));
    end
end
del(:,1) = [];
del = round(del*10^3)/10^3;
mprintf("%5s %6s %10s %10s %8s %9s %9s",'x','y','dy','d2y','d3y','d4y','d5y')
disp([x' y' del])
X = poly(0, "X");
del0 = del(1,:);
y0 = y(1);
Y = y0;
for i = 1:length(del0)
    p = 1;
    for j = 1:i
        p = p*(X-x(j));
    end
    Y = Y + p*del0(i);
end

dydx = derivat(Y);
d2ydx = derivat(dydx);

XX = 0.25;
dy = horner(dydx,XX);
d2y = horner(d2ydx,XX);

disp(round(dy*10^4)/10^4,"y''(0.25) = ")
disp(d2ydx,"y''''(x) = ")
disp(d2y,"y''''(0.25) = ")
//The constant term in y''(x) is incorrectly computed to -91.7 instead of -97.42 in the text.
