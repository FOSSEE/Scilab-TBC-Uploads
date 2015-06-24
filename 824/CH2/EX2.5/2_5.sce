//clear//
clc
clear
exec("2.5data.sci");


V1 = FA0*X1*(1/-rA);
V2 = FA0*(X2-X1)*(1/-rA2);
V = FA0*X*(1/-rA2);
disp("V1 =")
disp(V1)
disp("dm^3")
disp("V2 =")
disp(V2)
disp ("dm^3")
disp("V =")
disp(V)
disp ("dm^3")
