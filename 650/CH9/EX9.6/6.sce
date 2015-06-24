clc
NPSH=5; // m
p_v=18*10^3; // N/m^2
p_l=0.94*101.3*10^3; // N/m^2 
rho=970; // kg/m^3
g=9.81; // m/s^2
z_s=3; // m
H_L=0.5; // m
d=3; // m
h=2.5; // m
Q=5; // m^3/h

z1=NPSH+(p_v-p_l)/rho/g + z_s + H_L;
V=%pi/4*d^2*(h-z1);
t=V/Q;

disp("Quantity of liquid delivered =")
disp(V)
disp("m^3")

disp("Time taken =")
disp(t)
disp("h")
