clc

F=6*10^3; // Pa
b=0.12; // m

f=F*b;

disp("(a) The load the pad will support =")
disp(f)
disp("N/m")

dp=12*10^3; // N/m^2
dx=0.12; // m
c=0.00018; // m
u=0.5; // kg/m/s
V=5; // m/s

q=(dp/dx)*c^3/12/u + V*c/2;
disp("(b) The rate at which oil must be supplied =")
disp(q)
disp("m^2/s")