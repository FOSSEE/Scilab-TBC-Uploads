clc

h_f=9; // m
l=180; // m
Q=85*10^-3; // m^3/s
f=0.00475; 
k=0.00015; // m
v=1.14*10^-6; // m^2/s
g=9.81; // m/s^2

d=(4*f*l*Q^2/h_f/(%pi/4)^2/(2*g))^(1/5);
Re=(Q/(%pi*d^2/4))*d/v;

disp("The size of galvanized steel pipe = ")
disp(d)
disp("m")
