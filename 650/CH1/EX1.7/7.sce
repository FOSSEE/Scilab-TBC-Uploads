clc
p_atm=101.3*10^3; // N/m^2
rho=1000; // kg/m^3
g=9.81; // m/s^2
H1=3; //m
a=0.073; // N/m
r1=5*10^(-4); //m

p1=p_atm+rho*g*H1+2*a/r1;

// p2=p_atm+rho*g*H2+2*a/r2;

// p1*4/3*%pi*r1^3=p2*4/3*%pi*r2^3

// Solving above two equations we get
r2=0.053; //mm
disp("Radius of the bubble =")
disp(r2)
disp("mm")