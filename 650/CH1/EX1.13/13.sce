clc
rho=1000;
x=0.06;
rho_0=800;
x_0=0.04;

L=(rho*x-rho_0*x_0)/(rho-rho_0);

rho_L=900;
x_L=L-rho/rho_L*(L-x);
disp("Length of the stem above the liquid of SG 0.9 =")
disp(x_L)
disp("m")