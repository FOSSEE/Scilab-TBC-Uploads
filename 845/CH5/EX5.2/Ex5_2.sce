//Example 5.2
clc
clear

x = [20 30 35 40 45 50];
y = [10 11 11.8 12.4 13.5 14.4];

X = x.^2;
Y = y;

n = length(Y);
M1 = [sum(Y); sum(X.*Y)];
M2 = [n sum(X); sum(X) sum(X.^2)];

A = M2\M1;

a = A(1);
b = A(2);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")
