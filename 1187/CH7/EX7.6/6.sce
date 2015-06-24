clc

d1=3; // m
d2=2; // m
f=0.007;
l=75; // m
d=0.05; // m
g=9.81; // m/s^2
h1=1.8; // m

A1=%pi/4*d1^2;
A2=%pi/4*d2^2;

// dh/dt=dz1/dr*(1+A1/A2)
// Q=-A1*dz1/dt = -4/13*A1*dh/dt

// u=(Q/2)^2/(%pi/4*d^2)
// h=(4*f*l/d + 1.5)*u^2/2g = 1.438*10^5*Q^2

// t=integrate('-1/(1+A1/A2)*A1*(1.438*10^5/h)^(1/2)','h',h1,H)

// By integrating, we get
H=(h1^(1/2)-(900/2/824.7))^2;
h=h1-H;
dz1=1/(1+A1/A2)*h;

disp("The change in the level in larger tank =")
disp(dz1)
disp("m")