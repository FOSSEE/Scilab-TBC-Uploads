clc

Q=0.05; // m^3/s
d=0.15; // m^2
h=8; // m
g=9.81; // m/s^2
l=90; // m
f=0.007;

u1=Q/(%pi/4*d^2);

t=-integrate('1/((h*g/l)+(2*f/d)*u^2)', 'u', u1, 0);
disp("Time for which flow into the tank continues after the power failure = ")
disp(t)
disp("s")