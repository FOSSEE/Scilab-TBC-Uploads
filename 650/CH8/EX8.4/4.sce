clc
rho=867; // kg/m^3
Q=12/3600; // m^3/s
u=7.5*10^(-4); // Ns/m^2
L=200; // m
H=10; // m
g=9.81; // m/s^2

d=(H*2*g/(4*0.079*(4*rho*Q/%pi/u)^(-1/4)*L*(4*Q/%pi)^2))^(-4/19);
disp("Internal diameter of the pipeline =")
disp(d)
disp("m")

Re=4*rho*Q/%pi/d/u;
disp("Re =")
disp(Re)
disp("The value of Reynolds number lies between 4000 and 10^5, confirming the validity of using the Blasius equation for smooth-walled pipes")