clc
f=0.005; 
L=10; // m
d=0.025; // m
g=9.81; // m/s^2

// H_L=4*f*L/d*v^2/2/g+0.5*v^2/2/g
// H_L=8.5*v^2/2/g

// By Bernoulli equation we get
// H=2.62+9.5*v2^2/2/g

// Applying the Bernoulli equation between the liquid surface and discharge point 
// H_L=33.5*v2^2/2/g

// Solving above two we get
v2=1.9; // m/s

Q=%pi*d^2/4*v2;
disp("Rate of flow =")
disp(Q)
disp("m^3/s")

H=2.62+9.5*v2^2/2/g;
disp("The minimum allowable height =")
disp(H)
disp("m")