clc

Cd=0.62;
g=9.81; // m/s^2
d=0.1; // m
d0=0.06; // m
d1=0.12; // m

rho=1000; // kg/m^3
rho_m=13600; // kg/m^3
rho_f=0.86*10^3; //kg/m^3

A0=%pi/4*d0^2;
A1=%pi/4*d1^2;

p_diff=(rho_m-rho_f)*g*d;

h=p_diff/rho_f/g;

Q=Cd*A0*((2*g*h)/(1-(A0/A1)^2))^(1/2);

m=rho_f*Q;

disp("Mass flow rate = ")
disp(m)
disp("kg/s")