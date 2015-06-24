//Example 6.16

clc
clear

x = [0 1 2 4];
y = [1 1 2 5];

n = length(x);
del = %nan*ones(n,4);
del(:,1) = y';
for j = 2:4
    for i = 1:n-j+1
        del(i,j) = (del(i+1,j-1) - del(i,j-1)) / (x(i+j-1) - x(i));
    end
end
del(:,1) = [];

Y = 0;
X = poly(0, "X");
for i = 1:n
    t = x;
    t(i) = [];
    p = 1;
    for j = 1:length(t)
        p = p * (X-t(j))/(x(i)-t(j));
    end
    Y = Y + p*y(i);
end
disp(round(Y*10^4)/10^4,"Interpolating polynomial:")
