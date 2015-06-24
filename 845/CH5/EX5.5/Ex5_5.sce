//Example 5.5

clc
clear

x = 1:6;
y = [2.6 5.4 8.7 12.1 16 20.2];

X = x;
Y = y ./x;

n = length(Y);
M1 = [sum(Y); sum(X.*Y)];
M2 = [n sum(X); sum(X) sum(X.^2)];

A = M2\M1;

a = A(1);
b = A(2);

disp(round(a*10^5)/10^5, "a =")
disp(round(b*10^5)/10^5, "b =")
