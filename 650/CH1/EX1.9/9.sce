clc

// p1-rho*g*(H+H1)=p2-rho*g*H1-rho_air*g*H

rho=1000;
g=9.81; // m/s^2
H=0.4; //m
dp=rho*g*H;
disp("Pressure drop in the pipe =")
disp(dp)
disp("N/m^2")