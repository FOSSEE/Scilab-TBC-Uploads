//Example 6.12

clc
clear

x = 1:8;
y = x^3;

n = length(x);
del = %nan*ones(n,4);
del(:,1) = y';
for j = 2:4
    for i = 1:n-j+1
        del(i+j-1,j) = del(i+j-1,j-1) - del(i+j-2,j-1);
    end
end

X = 7.5;
h = x(2) - x(1);
p = (X-x(n)) / h;
xn = x(n);
yn = y(n);
delyn = del(n,:);

Y = 0;

for i = 0:length(delyn)-1
    t = 1;
    for j = 1:i
        t = t * (p+j-1);
    end
    Y = Y + t*delyn(i+1)/factorial(i);
end
disp(Y,"y(7.5) = ")

