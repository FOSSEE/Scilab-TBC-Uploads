clc
rho=1000; //kg/m^3
d=0.05; //m
L=500; //m
v=1.7; //m/s

a=%pi*d^2/4;
F=rho*a*L*v;

P=F/a/10^3;
disp("Average pressure =")
disp(P)
disp("kN/m^2")