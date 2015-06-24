clc

k=0.00025; // m
d=0.1; // m
l=120; // m
h_f=5; // m
g=9.81; // m/s^2
v=10^-5; // m^2/s

f=0.0079042;

u=sqrt(h_f*d*(2*g)/(4*f*l));
Re=u*d/v;

Q=u*%pi/4*d^2;
disp("Rate =")
disp(Q)
disp("m^3/s")