clc
//initialization of new variables
clear
w=1 //m
L=0.5 //m
u=2 //m/s
rho=1000 //kg/m^3
mu=10^-3
//calculations
ReL=rho*u*L/mu
Cd=2*0.664/sqrt(ReL)
D=2*Cd*1/2*rho*u^2*(w*L)
del=1.721*L/sqrt(ReL)
th=0.664*L/sqrt(ReL)
//results
printf('The drag on teh plate is %.3f N',D)
