clc
d=0.004; // m
rho=1000; // kg/m^3
v=3; // m/s
meu=10^(-3); // khm(m.s)

Re=rho*v*d/meu; 
disp("Reynolds number =")
disp(Re)
disp("The Reynolds number is well in excess of 4000, so the flow is turbulent.")