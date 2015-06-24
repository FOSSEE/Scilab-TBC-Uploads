//Example 8.6

clc
clear

function [f] = f1(x,y,p)
    f = p;
endfunction

function [f] = f2(x,y,p)
    f = 0.1*(1-y^2)*p - y;
endfunction

x0 = 0;
y0 = 1;
p0 = 0;
h = 0.2;
x = 0.2;
n = (x-x0)/h;

for i = 1:n
    k1 = h*f1(x0,y0,p0);
    l1 = h*f2(x0,y0,p0);
    k2 = h*f1(x0+h/2,y0+k1/2,p0+l1/2);
    l2 = h*f2(x0+h/2,y0+k1/2,p0+l1/2);
    k3 = h*f1(x0+h/2,y0+k2/2,p0+l2/2);
    l3 = h*f2(x0+h/2,y0+k2/2,p0+l2/2);
    k4 = h*f1(x0+h,y0+k3,p0+l3);
    l4 = h*f2(x0+h,y0+k3,p0+l3);
    y = y0 + 1/6*(k1+2*(k2+k3)+k4);
    p = p0 + 1/6*(l1+2*(l2+l3)+l4);
    y = round(y*10^4)/10^4;
    p = round(p*10^4)/10^4;
end

disp(y,"y(0.2) = ")
disp(p,"y''(0.2) = ")
