clc
rho_m=840; //kg/m^3
g=9.8; //m/s^2
H=0.03; //m
rho=1.2; //kg//m^3

dp=rho_m*g*H;

v1=sqrt(2*dp/rho);
disp("Velocity =")
disp(v1)
disp("m/s")