clc;
l=1; // m
b=0.3; // m
n=0.014; // s/m^(1/3)
i=1/1000;

A=l*b;
P=2*b+l;
m=A/P;

Q=A/n*m^(2/3)*sqrt(i);
disp("The delivery of water through the channel is found to be ")
disp(Q)
disp("m^3/s")