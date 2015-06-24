//Example 6.8

clc
clear

x = 10:10:50;
y = [46 66 81 93 101];

n = length(x);
del = %nan*ones(n,5);
del(:,1) = y';
for j = 2:5
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del(:,1) = [];

X = 15; //input
for i = 1:n
    if X>x(i) then
        h = x(i+1) - x(i);
        p = (X-x(i)) / h;
        x0 = x(i);
        y0 = y(i);
        dely0 = del(i,:);
        dely0(isnan(y0)) = [];
    end
end

Y = y0;

for i = 1:length(dely0)
    t = 1;
    for j = 1:i
        t = t * (p-j+1);
    end
    Y = Y + t*dely0(i)/factorial(i);
end
Y = round(Y*10^4)/10^4;
disp(Y,"f(15) = ")
