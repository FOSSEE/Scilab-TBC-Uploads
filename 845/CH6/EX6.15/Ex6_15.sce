//Example 6.15

clc
clear

x = [1 2 5];
y = [1 4 10];

n = length(x);
Y = 0;
X = poly(0, "X");
//X = 5;
for i = 1:n
    t = x;
    t(i) = [];
    p = 1;
    for j = 1:length(t)
        p = p * (X-t(j))/(x(i)-t(j));
    end
    Y = Y + p*y(i);
end
Y5 = horner(Y,3);
disp(Y5,"f(3) = ")
