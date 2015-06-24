clc

d0=0.15; // m
d1=0.1; // m
Q=50/3600; // m^3/s
f=0.0052;
Rho=972;

a=%pi/4*((d0)^2-(d1)^2);

P=%pi*((d0)+(d1));

d_eq=4*a/P;

v=Q/a;

del_p_f=2*f*Rho*v^2/d_eq;
disp("the pressure drop due to friction per metre length of tube is found to be ")
disp(del_p_f)
disp("Nm^2/m")