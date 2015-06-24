//clear//
clc
clear all
exec("2.6data.sci");


X1 = X(1:5);
p1 = p(1:5);
V1 = FA0*inttrap(X1,p1)
X2 = X(5:9);
p2 = p(5:9);
V2 = FA0*inttrap(X2,p2)
V=V1+V2;
disp("V1 =")
disp(V1)
disp("dm^3")
disp("V2 =")
disp(V2)
disp ("dm^3")
disp("V =")
disp(V)
disp ("dm^3")
