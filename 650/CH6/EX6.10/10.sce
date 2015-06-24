clc
H1=1.5; // m
V=0.75; // m^3
d1=1.2; // m
u=0.08; // Ns/m^2
L=3; // m
rho=1100; // kg/m^3
g=9.81; // m/s^2
d=0.025; // m

a=%pi*d^2/4;
A=%pi*d1^2/4;
H2=H1-(V/A);

t=-32*u*L*A/(a*rho*g*d^2)*log(H2/H1);

disp("Time taken =")
disp(t)
disp("s")