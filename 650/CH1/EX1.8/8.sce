clc
H=0.2; //m
rho=1000; //kg/m^3
rho_Hg=13600; //kg/m^3
g=9.81; //m/s^2

dp=(rho_Hg-rho)*g*H;
disp("Differential pressure =")
disp(dp)
disp("N/m^2")