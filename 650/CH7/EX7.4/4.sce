clc;
Q=300/60; // m^3/s
i=1/1600;

H=(Q/140*sqrt(2/i))^(2/3);

A=2*H^2;
disp("The minimum flow area is found to be ")
disp(A)
disp("m^2")