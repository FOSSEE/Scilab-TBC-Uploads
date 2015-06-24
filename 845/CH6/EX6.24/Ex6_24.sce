//Example 6.24

clc
clear

x = 1:3:10;
F = [500426 329240 175212 40365];

n = length(x);
del = %nan*ones(n,4);
del(:,1) = F';
for j = 2:4
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end

del0 = del(1,:);
X = 2;
x0 = x(1);
h = x(2) - x(1);
p = (X-x0) / h;
F2 = 0;
for i = 0:length(del0)-1
    t = 1;
    for j = 1:i
        t = t * (p-j+1);
    end
    F2 = F2 + t*del0(i+1)/factorial(i);
end

f2 = F(1) - F2;
disp(f2,"f(2) = ")
