clc
H2=0.5; //m
H1=2; //m
A=4; //m^2
f=0.005; 
L=20; //m
d=0.025; //m
g=9.81; // m/s^2

a=%pi*d^2/4;

t=integrate('-A*sqrt((4*f*L/d)+2.5)/a/(sqrt(2*g))*(H)^(-1/2)', 'H', H1, H2);
disp("Time taken =")
disp(t)
disp("s")