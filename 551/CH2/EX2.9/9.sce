clc
d=0.2; //m
g=9.81; //m/s^2
h=0.117; //m
rho=13600; //kg/m^3
p=rho*g*h;
m=(p*%pi/4*d^2)/g;
disp("mass=")
disp(m)
disp("kg")