//Example 6.10

clc
clear

x = 1:5;
Y = poly(0, "Y");
y = [2 5 7 Y 32];

n = length(x);
del = %nan*ones(n,5);
del(:,1) = y';
for j = 2:5
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del(:,1) = [];

// del4 = 0

y0 = del(:,4);
y0(isnan(y0)) = [];
Y = roots(y0)
disp(Y,"Missing value f(x3) = ")
