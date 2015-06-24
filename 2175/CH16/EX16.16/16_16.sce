clc;
Beta=1/303;
g=9.81;
l=1;
delta_t=327-30;
v=(5.128*10^-5);
Gr=Beta*g*l^3*delta_t/v^2

alpha=1.31*delta_t^0.33333
A=1;//m^2
delta_t=627-27;
Q=alpha*A*delta_t
disp("rate of heat loss:");
disp("kW",Q/1000);
