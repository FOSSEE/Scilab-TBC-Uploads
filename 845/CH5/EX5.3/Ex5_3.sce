//Example 5.3

clc
clear

x = [8 10 15 20 30 40];
y = [13 14 15.4 16.3 17.2 17.8];

X = 1 ./x;
Y = 1 ./y;

n = length(Y);
M1 = [sum(Y); sum(X.*Y)];
M2 = [n sum(X); sum(X) sum(X.^2)];

A = M2\M1;

b = A(1);
a = A(2);

disp(round(a*10^4)/10^4, "a =")
disp(round(b*10^4)/10^4, "b =")
