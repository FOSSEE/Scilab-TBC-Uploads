//Example 5.1
clc
clear

x = 10:10:80;
y = [1.06 1.33 1.52 1.68 1.81 1.91 2.01 2.11];

X = log(x);
Y = log(y);

n = length(Y);
M1 = [sum(Y); sum(X.*Y)];
M2 = [n sum(X); sum(X) sum(X.^2)];

A = M2\M1;

m = exp(A(1));
n = A(2);

disp(round(m*10^4)/10^4, "m =")
disp(round(n*10^4)/10^4, "n =")
