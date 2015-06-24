clc

b=0.0375; // m
t=0.0625; // m
U=5; // m/s

m=2*%pi*U*t/atan(2*b*t/(t^2-b^2));

L=2*b*(1+m/(%pi*U*b))^(1/2);

disp("L =")
disp(L)
disp("m")
