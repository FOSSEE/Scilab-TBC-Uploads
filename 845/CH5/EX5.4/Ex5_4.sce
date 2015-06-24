//Example 5.4

clc
clear

X = 0.5:0.5:3;
Y = [15 17 19 14 10 7];

n = length(Y);
M1 = [sum(Y); sum(X.*Y)];
M2 = [n sum(X); sum(X) sum(X.^2)];

A = M2\M1;

b = A(1);
a = A(2);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")
