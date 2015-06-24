//Example 6.22

clc
clear

x = 3:8;
y = [0.205 0.24 0.259 0.262 0.25 0.224];

n = length(x);
del = %nan*ones(n,5);
del(:,1) = y';
for j = 2:5
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end

X = poly(0, "X");
x0 = x(1);
y0 = y(1);
h = x(2) - x(1);
p = (X-x0)/h;
del0 = del(1,:);
del0 = round(del0*10^4)/10^4;
del0 = del0(1:find(del0==0)-1);

Y = 0;
for i = 0:length(del0)-1
    t = 1;
    for j = 1:i
        t = t * (p-j+1);
    end
    Y = Y + t*del0(i+1)/factorial(i);
end
disp(Y,"y = ")

dydx = derivat(Y);
minx = roots(dydx);
miny = round(horner(Y,minx)*10^5)/10^5;
disp(minx,"min_x = ")
disp(miny,"min_y = ")
//min_y value is incorrectly displayed in textbook as 0.25425 instead of 0.26278
