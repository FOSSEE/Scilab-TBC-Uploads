//Example 5.8

clc
clear

x = 1:4;
y = [1.65 2.7 4.5 7.35];

X = x;
Y = log10(y);

n = length(Y);
M1 = [sum(X.^2) sum(X); sum(X) n];
M2 = [sum(X.*Y); sum(Y)];
M = M1\M2;

B = M(1);
A = M(2);
a = 10^A;
b = B/log10(%e);

disp(round(a), "a =")
disp(round(b*10^4)/10^4, "b =")
