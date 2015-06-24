clc
N=600/60; // revolutions per sec 
r=0.025; // m 
t=400; // N/m^2
l=0.002; // m

w=2*%pi*N;

u=t*l/w/r;
disp("Viscosity =")
disp(u)
disp("Ns/m^2")

T=integrate('2*%pi*u*w/l*r^3', 'r', 0, r);
disp("Torque =")
disp(T)
disp("Nm")