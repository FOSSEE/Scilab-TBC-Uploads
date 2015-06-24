clc
dp=20*10^3; //N/m^2
rho_Hg=13600; //kg/m^3
rho=700; //kg/m^3
g=9.81; //m/s^2
d=0.02; //m

H=dp/(rho_Hg-rho)/g;

V=%pi/4*d^2*H;
disp("Quantity of mercury to be removed =")
disp(V)
disp("m^3")