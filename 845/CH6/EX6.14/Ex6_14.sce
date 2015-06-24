//Example 6.14

clc
clear

x = [1 3 4 6];
y = [-3 0 30 132];

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
Y5 = horner(Y,5);
disp(Y5,"y(5) = ")
