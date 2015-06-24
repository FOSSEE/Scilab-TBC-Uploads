clc

// p_a-p_b=-1/2*rho*C^2*(1/R_A^2-1/R_B^2)

rho_w=1000; // kg/m^3
g=9.81; // m/s^2
h=0.0115; // m
rho=1.22; // kg/m^3
R_A=0.4; // m
R_B=0.2; // m

C=sqrt(rho_w*g*h*2/(rho*(1/R_B^2-1/R_A^2)));

m=rho*C*R_B*integrate('1/R','R', R_B, R_A);

disp("Mass flow rate =")
disp(m)
disp("kg/s")
