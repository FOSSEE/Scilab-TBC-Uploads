clc
//initialization of new variables
clear
L=10 //m
D=0.02 //m
Uav=0.15 //m/s
rho=1000 //kg/m^3
mu=10^-3
g=9.8 //m/s^2
//calculations
Re=rho*Uav*D/mu
f=64/Re
Hf=f*L*Uav^2/(D*2*g)
//results
printf('Head loss is = %.4f m',Hf)
