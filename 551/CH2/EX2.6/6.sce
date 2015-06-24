clc
h0=.761; //m
h=.55; //m
g=9.79; //m/s^2
rho=13640; //kg/m^3
P=rho*g*(h0+h); //N/m^2
disp("Gas pressure=")
disp(P/10^5)
disp("bar")