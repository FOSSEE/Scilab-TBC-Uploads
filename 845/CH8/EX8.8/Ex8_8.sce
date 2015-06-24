//Example 8.8

clc
clear

function [f] = dy(t,y)
    f = t+y;
endfunction


tt = 0:0.1:0.3;
yy = [1 1.1103 1.2428 1.3997];

t0 = tt(1);
y0 = yy(1);
t = 2;
h = tt(2) - tt(1);
n = (t-t0)/h;
for i = 1:n
    dydt(1) = dy(t0,yy(1));
    dydt(2) = dy(t0+h,yy(2));
    dydt(3) = dy(t0+2*h,yy(3));
    dydt(4) = dy(t0+3*h,yy(4));

    yP = yy(1) + 4*h/3*(2*dydt(2)-dydt(3)+2*dydt(4));
    dydt(5) = dy(t0+4*h,yP);
    yC = yy(3) + h/3*(dydt(3)+4*dydt(4)+dydt(5));
end
yC = round(yC*10^4)/10^4;
disp(yC,"y(0.4) = ")

t = [tt'; t0+4*h];
y = [yy'; yC];
mprintf("\n%6s %8s",'t','y')
disp([t y])
