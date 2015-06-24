clc
del_p=90*10^3; // N/m^2
d=0.126; // m
R=0.126/2; // m
u=1.2;
L=60; // m
Rho=1260;

Q=%pi * del_p * R^4 / (8*u*L);
disp("The glycerol delivery rate is ");
disp(Q);
disp("m^3/s");

Re=4*Rho*Q/(u*%pi*d);
disp("The Reynolds number is ");
disp(Re);
disp("As Re is below 2000, therefore confirming laminar flow.");
