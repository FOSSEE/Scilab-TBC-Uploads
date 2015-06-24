clc
g=9.81; // m/s^2
H=4; // m
f=0.006;
L=50; // m
d=0.1; // m

v1=sqrt(2*g*H/(4*f*L/d + 1.3));

t=integrate('4/(v1^2-v^2)', 'v', 0, 0.99*v1);
disp("Time taken =")
disp(t)
disp("s")