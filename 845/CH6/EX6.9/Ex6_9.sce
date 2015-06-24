//Example 6.9

clc
clear

x = 0.1:0.1:0.5;
y = [1.4 1.56 1.76 2 2.28];

n = length(x);
del = %nan*ones(n,5);
del(:,1) = y';
for j = 2:5
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del(:,1) = [];

X = poly(0, "X");
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
Y = round(Y*10^2)/10^2;
disp(Y,"Required Newton''s Interpolating Polynomial:")
