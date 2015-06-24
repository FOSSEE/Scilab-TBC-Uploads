//Example 5.6

clc
clear

X = 1:0.2:2;
Y = [0.98 1.4 1.86 2.55 2.28 3.2];

n = length(Y);
M1 = [sum(X.^4) sum(X.^3) sum(X.^2); sum(X.^3) sum(X.^2) sum(X); sum(X.^2) sum(X) n];
M2 = [sum(X.^2 .* Y); sum(X.*Y); sum(Y)];
A = M1\M2;

a = A(1);
b = A(2);
c = A(3);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")
disp(round(c*10^4)/10^4, "c =")
