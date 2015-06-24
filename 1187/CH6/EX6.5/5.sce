clc

disp("(a)the dynamic and kinematic viscosities of the oil")

d=0.00475; // m
g=9.81; // m/s^2
rho_s=1151; // kg/m^3
rho=880; // kg/m^3
u=0.006; // m/s

F=%pi/6*d^3*g*(rho_s-rho);

rat_d=0.25; // ratio of d/D
rat_F=1.8; // ratio of F/Fo

dynamic=F/(1.8*3*%pi*u*d);

kinematic=dynamic/rho;

disp("Dynamic viscosity = ")
disp(dynamic)
disp("kg/m/s")

disp("Kinematic viscosity =")
disp(kinematic)
disp("m^2/s")

disp("(b) Reynolds number of sphere =")

Re=rho*u*d/dynamic;
disp("Reynolds number =")
disp(Re)
