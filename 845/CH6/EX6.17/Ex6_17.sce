//Example 6.17

clc
clear

x = [0 1 4];
y = [2 1 4];

n = length(x);
del = %nan*ones(n,3);
del(:,1) = y';
for j = 2:3
    for i = 1:n-j+1
        del(i,j) = (del(i+1,j-1) - del(i,j-1)) / (x(i+j-1) - x(i));
    end
end
del(:,1) = [];

Y = 0;
X = 2;
for i = 1:n
    t = x;
    t(i) = [];
    p = 1;
    for j = 1:length(t)
        p = p * (X-t(j))/(x(i)-t(j));
    end
    Y = Y + p*y(i);
end
disp(Y,"y(2) = ")
