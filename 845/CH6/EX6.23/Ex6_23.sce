//Example 6.23

clc
clear

x = [-1 1 2 3];
y = [-21 15 12 3];

n = length(x);
X = poly(0, "X");
Y = 0;
for i = 1:n
    t = x;
    t(i) = [];
    p = 1;
    for j = 1:length(t)
        p = p * (X-t(j))/(x(i)-t(j));
    end
    Y = Y + p*y(i);
end

dydx = derivat(Y);
extx = real(roots(dydx));
extx = round(extx*10^4)/10^4;
d2ydx = derivat(dydx);

if  horner(d2ydx,extx(1)) < 0 then
    maxx = extx(1);
    maxy = horner(Y,maxx);
else
    maxx = extx(2);
    maxy = horner(Y,maxx);
end
maxy = round(maxy*10^4)/10^4;
disp(maxx,"max_x = ")
disp(maxy,"max_y = ")
