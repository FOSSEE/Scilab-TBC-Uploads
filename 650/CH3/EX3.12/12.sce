clc
Q=3*10^(-6); // m^3/s
u=0.001; // Ns/m^2
W=1;
rho=1000; // kg/m^3
g=9.81; // m/s^2
d=1.016*10^(-4); // m

theta=asind(3*Q*u/W/rho/g/d^3);
disp("Exact angle of inclination =")
disp(theta)

d1=1.25*10^(-4); // m

u1=W*rho*g*sind(theta)*(d1^3)/(3*Q);
disp("Viscosity of the second liquid =")
disp(u1)
disp("Ns/m^2")