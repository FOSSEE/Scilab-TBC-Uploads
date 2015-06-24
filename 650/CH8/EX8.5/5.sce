clc
m=40/60; // kg/s
rho=873; // kg/m^3
d=0.025; // m
u=8.8*10^-4; // Ns/m^2
dp=55*10^3; //N/m^2
L=18; // m
g=9.81; // m/s^2

v2=4*m/rho/%pi/d^2;
Re=rho*v2*d/u;

// According to this value of Re, Prandtl's equation is satisfied. 
// 1/sqrt(f)=4*log(Re*sqrt(f))-0.4
// By trial and error method we get friction factor equal to
f=0.0055;

H=dp/rho/g + v2^2/2/g + v2^2/2/g*(4*f*L/d+1.5);
disp("The minimum allowable height =")
disp(H)
disp("m")