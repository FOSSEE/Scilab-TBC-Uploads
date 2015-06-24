clc

disp("(a) Feed is at the end of the main")
Q0=4.5*10^-3; // m^3/s
d=0.1; // m
l=4.5*10^3; // m
g=9.81; // m/s^2
f=0.006; 
rho=1000; // kg/m^3

u0=Q0/(%pi/4*d^2);
h_f=4*f*u0^2*l/3/(d*2*g);

dp=h_f*rho*g;
disp("Pressure difference =")
disp(dp)
disp("N/m^2")

disp("(b) Feed is at the centre of the main")

Q0_b=Q0/2;
u0_b=u0/2;
l_b=l/2;

dp_b=(u0_b/u0)^2*(l_b/l)*dp;
disp("Pressure difference =")
disp(dp_b)
disp("N/m^2")