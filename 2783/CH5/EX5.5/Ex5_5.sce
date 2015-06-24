clc
//initialization of new variables
clear
L=3 //m
D=1.2 //cm
Q=0.5 //L/min
mu=1.9*10^-2
rho=814 //kg/m^3
//calculations
R=D/2*10^-2
Q=Q/60*10^-3
Dp=-Q*8*mu/(%pi*R^4)
S=%pi*R^2
Uav=Q/S
Re=rho*Uav*D/mu
//results
printf('The pressure drop is %.1f N/m^2',Dp)
// Answer given in the ext is wrong by a scale of 10
