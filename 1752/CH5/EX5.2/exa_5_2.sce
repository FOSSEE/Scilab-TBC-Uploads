//Exa 5.2
clc;
clear;
close;
//given data
format('v',9)
rho=998;// in kg/m^3
k=.648;// in W/mK
v= 0.556*10^-6;// in m^2/s
Pr=3.54;
V=2;// in m/s
t_infinite= 10;// in degree C
t_s=90;// in degree C
Re=5*10^5;
A=1*1;// in m^2
// Re= rho*Vx/miu = V*x/v
x=Re*v/V;// in m
disp(x,"Length of the plate in m")


// Nu = h*x/k =Pr^(1/3)*(0.037*Re^0.8-872)
x=1;
Re= V*x/v;
h= Pr^(1/3)*(0.037*Re^0.8-873)*k/x;// in W/m^2
q=h*A*(t_s-t_infinite);
disp(q*10^-3,"Heat transfer from entire plate in kW")

