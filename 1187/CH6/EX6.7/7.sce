clc

V=10; // m/s
h1=0.0005; // m
h2=0.00025; // m
L=0.1; // m
b=0.1; // m
RD=0.87;
u=2*10^-4; // m^2/s
rho_w=1000; // kg/m^3

H=h1/h2;

Q=V/2*(1+H^2)/(1+H^3)*b*h1;
disp("(b) Volumetric flow rate of oil =")
disp(Q)
disp("m^3/s")

F=V/2*(1-(1+H^2)/(1+H^3))*12*RD*rho_w*u/h1^2*L^2/4*b;
disp("The load supported by the bearing =")
disp(F)
disp("N")