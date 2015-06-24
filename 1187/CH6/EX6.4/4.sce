clc

d_p=0.05; // diameter of piston in m
d_c=0.0504; // diameter of cylinder in m
SG=0.87;
rho_w=1000; // kg/m^3
v=10^-4; // m^2/s
dp=1.4*10^6; // Pa
l=0.13; // m

c=(d_c-d_p)/2; // clearance

u=SG*rho_w*v; // Dynamice viscocity

Vp=dp*c^3/(6*u*l*(d_p/2+c));
disp("Velocity of the dashpot =")
disp(Vp)
disp("m/s")