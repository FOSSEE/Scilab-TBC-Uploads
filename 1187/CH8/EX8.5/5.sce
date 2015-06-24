clc

u_m = 50; // m/s or 180 km/h
v=1.5*10^(-5); // m^2/s
l=100; // m
rho=1.2; // kg/m^3
b=8.3; // m

delta = 0.37*(v/u_m)^(1/5)*l^(4/5);

disp("(a) the boundary layer thickness at the rear of the train =")
disp(delta)
disp("m")

Re_l = u_m*l/v;
C_F=0.074*(Re_l)^(-1/5);
F=0.037*rho*u_m^2*l*Re_l^(-1/5);

D_F = F*b;

disp("(b) the frictional drag acting on the train, D_F =")
disp(D_F)
disp("N")

P=D_F*u_m;
disp("(c) the power required to overcome the frictional drag =")
disp(P/1000)
disp("kW")
