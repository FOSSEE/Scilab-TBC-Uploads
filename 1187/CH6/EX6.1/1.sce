clc

RD=0.83;
rho_w=1000; // density of water in kg/m^3
v=2.3; // m/s
d=0.012; // m
u=0.08; // dynamic viscocity in kg/m/s

rho_oil=RD*rho_w;

Re=rho_oil*v*d/u;
disp("(a) Reynolds number =")
disp(Re)

v_max=2*v;
disp("(b)Maximum velocity =")
disp(v_max)
disp("m/s")

Q=%pi/4*d^2*v;
disp("(c)Volumetric flow rate =")
disp(Q)
disp("m^3/s")

p=-128*Q*u/%pi/d^4;
disp("Pressure gradient along the pipe = ")
disp(p)
disp("Pa/m")