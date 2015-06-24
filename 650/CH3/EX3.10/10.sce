clc
rho=1000; //kg/m^3
u=0.1; //Ns/m^2
g=9.81; //m/s^2
L=10; //m
H=2; //m
Q=14/3600; //m^3/s
d=0.05; //m

dp=rho*g*(L+H) - (128*Q*u*L/%pi/0.05^4);
disp("Pressure drop across the valve =")
disp(dp)
disp("N/m^2")