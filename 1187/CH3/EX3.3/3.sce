clc

d_jet = 0.0086; // m
d_orifice = 0.011; // m
x = 2; // m
y = 0.6; // m
h = 1.75; // m
g = 9.81; // m/s^2

A2 = %pi/4*d_orifice^2;

Cc = (d_jet/d_orifice)^2; // Coefficient of Contraction

Cv = x/2/sqrt(y*h); // Coefficient of velocity

Cd = Cv*Cc; // Coefficient of Discharge

Q = Cd*A2*sqrt(2*g*h);

disp("Rate of discharge = ")
disp(Q)
disp("m^3/s")