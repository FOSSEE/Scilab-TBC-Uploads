//Example 6.11

clc
clear

x = 0:5;
y = [-3 3 11 27 57 107];

n = length(x);
del = %nan*ones(n,4);
del(:,1) = y';
for j = 2:4
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del(:,1) = [];

X = poly(0, "x");
h = x(2) - x(1);
p = (X-x(1)) / h;
x0 = x(1);
y0 = y(1);
dely0 = del(1,:);

Y = y0;

for i = 1:length(dely0)
    t = 1;
    for j = 1:i
        t = t * (p-j+1);
    end
    Y = Y + t*dely0(i)/factorial(i);
end
disp(Y,"Required cubic polynomial:")
