clc
u=0.015; //Ns/m^2
Q=0.004/60; //m^3/s
dp=100;
rho=1100; //kg/m^3

R=(8*u*Q/(%pi*dp))^(1/4);
Re=(4*rho*Q/(%pi*u*(2*R)));

disp("Diameter of the pipe =")
disp(R)
disp("m")

disp("Reynolds number =")
disp(Re)