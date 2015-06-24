clc
rho=850; // kg/m^3
Q=0.056; // m^3/s
Cd=0.98;
d1=0.2; // m
d2=0.1; // m
g=9.81; // m/s^2
dz=0.3; // m

a=%pi*(d1)^2/4;

dp=rho/2*((Q/Cd/a)^2*((d1/d2)^4 - 1) + 2*g*(dz));
disp("The differential pressure =")
disp(dp)
disp("N/m^2")