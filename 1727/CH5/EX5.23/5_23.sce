clc
clear
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Cd=0.6
L=3 //m
H=0.4 //m
V0=[0 0.24 0.275]
//calculations
Q= Cd*2/3 *sqrt(2*g) *(L-0.2*H) *((H+ V0.^2 ./(2*g) ).^(3/2) - (V0.^2 ./ (2*g)).^(3/2))
//results
H=max(Q)
printf("Flow rate = %.3f m^3/s",H)
