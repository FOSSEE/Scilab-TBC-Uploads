//Example 5.7

clc
clear

x = 2:5;
y = [27.8 62.1 110 161];

X = log(x);
Y = log(y);

n = length(Y);
M1 = [sum(X.^2) sum(X); sum(X) n];
M2 = [sum(X.*Y); sum(Y)];
M = M1\M2;

b = M(1);
A = M(2);
a = exp(A);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")
