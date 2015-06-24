clc
rho_o=900; //kg/m^3
rho_n=1070; //kg/m^3
H=1; //m
g=9.81; //m/s^2
dp=10*10^3; //N/m^2

// H=H1+H2

H1=(dp-rho_n*g*H)/(rho_o-rho_n)/g;
disp("The position of the interface between the legs =")
disp(H1)
disp("m")