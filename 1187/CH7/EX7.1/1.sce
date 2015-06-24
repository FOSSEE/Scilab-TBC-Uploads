clc

Q=50*10^-3; // m^3/s
d=0.15; // m
l=300; // m
v=1.14*10^-6; // m^2/s
g=9.81; // m/s^2

// For galvanised steel
k=0.00015; // m
t=0.001; // ratio of k to d ; (k/d)
f=0.00515;

A1=%pi/4*d^2;

u=Q/A1; 
Re=u*d/v;

h_f=4*f*l*u^2/d/(2*g);
disp("Head lost to friction =")
disp(h_f)
disp("m")