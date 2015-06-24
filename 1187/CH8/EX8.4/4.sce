clc

v=1.5*10^(-5); // m^2/s
Re_t=5*10^5;
x_t=1.2; // m
rho=1.21; // kg/m^3

u_m=v*Re_t/x_t;

disp("(a) the velocity of the airstream =")
disp(u_m)
disp("m/s")

theta=0.646*x_t/sqrt(Re_t);

F=rho*u_m^2*theta;

D_F=2*F*x_t;

disp("(b) the frictional drag of the plate, D_F =")
disp(D_F)
disp("N")
