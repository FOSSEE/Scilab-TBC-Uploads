//clear//
clc
clear
exec("2.7data.sci");


X = X(1:6);
p = p(1:6);
V1 = FA0*inttrap(X,p);
V2 = FA0*(X2-X1)*(1/-rA2);
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
